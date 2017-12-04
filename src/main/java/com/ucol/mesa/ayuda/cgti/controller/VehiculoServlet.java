/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucol.mesa.ayuda.cgti.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ucol.mesa.ayuda.cgti.dao.VehiculoDAO;
import com.ucol.mesa.ayuda.cgti.model.Vehiculo;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class VehiculoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    VehiculoDAO vehiculoDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            vehiculoDAO = new VehiculoDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public VehiculoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        if (request.getParameter("action") != null ) {
            String action = request.getParameter("action");
            System.out.println(action);
            try {
                switch (action) {
                    case "index":
                        index(request, response);
                        break;
                    case "registrar":
                        System.out.println("entro");
                        registrar(request, response);
                        break;
                    case "mostrar":
                        mostrar(request, response);
                        break;
                    case "editar":
                        editar(request, response);
                        break;
                    case "eliminar":
                        eliminar(request, response);
                        break;
                    default:
                        break;
                }
            } catch (SQLException e) {
                PrintWriter out = response.getWriter();
                out.print(e.getSQLState());
            }
        } else {
            try {
                index(request, response);
            } catch (SQLException e) {
                PrintWriter out = response.getWriter();
                out.print(e.getSQLState());
            }
        }       
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        doGet(request, response);
    }
    
    private void index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        ServletContext servletContext = request.getServletContext();
        servletContext.getRequestDispatcher("/vehiculos/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        
        Vehiculo vehiculo = new Vehiculo(request.getParameter("numero_placa"), request.getParameter("modelo"), Integer.parseInt(request.getParameter("anio")), request.getParameter("estado"), Integer.parseInt(request.getParameter("dependencia")), request.getParameter("marca"), Integer.parseInt(request.getParameter("nivel_gasolina")));
        Gson jsonBuilder = new Gson();
        System.out.println(jsonBuilder.toJson(vehiculo));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        vehiculoDAO.insertar(vehiculo);
        out.print(jsonBuilder.toJson(vehiculo));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        System.out.println("entra mostrar");
        List<Vehiculo> listaVehiculos = vehiculoDAO.listarVehiculos();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaVehiculos));
    }


    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Vehiculo vehiculo = new Vehiculo(request.getParameter("id_vehiculo"), request.getParameter("modelo"), Integer.parseInt(request.getParameter("anio")), request.getParameter("estado"), Integer.parseInt(request.getParameter("dependencia")), request.getParameter("marca"), Integer.parseInt(request.getParameter("nivel_gasolina")));
        Gson jsonBuilder = new Gson();
        System.out.println(jsonBuilder.toJson(request.getParameterMap()));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println( "HolaMundo" + vehiculoDAO.actualizar(vehiculo, request.getParameter("id_vehiculoViejo")));
        vehiculoDAO.actualizar(vehiculo, request.getParameter("id_vehiculoViejo"));
        out.print(jsonBuilder.toJson(vehiculo));
        
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Vehiculo vehiculo = vehiculoDAO.obtenerPorId(request.getParameter("id_vehiculo"));
        System.out.println("holamundoeliminado" + vehiculoDAO.obtenerPorId(request.getParameter("id_vehiculo")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter(); 
        vehiculoDAO.eliminar(vehiculo);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(vehiculo));
    }
}
