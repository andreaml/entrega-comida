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

import com.ucol.mesa.ayuda.cgti.dao.ServicioDAO;
import com.ucol.mesa.ayuda.cgti.model.Servicio;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class ServicioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ServicioDAO servicioDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            servicioDAO = new ServicioDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public ServicioServlet() {
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
                    case "mostrarPorEspecialista":
                        mostrarPorEspecialista(request, response);
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
                e.getStackTrace();
                PrintWriter out = response.getWriter();
                out.print(e.getSQLState() + ' ' + e.getErrorCode() + ' ' + e.getMessage());
            }
        }else{
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
        //RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        //dispatcher.forward(request, response);
        ServletContext servletContext= request.getServletContext();
        servletContext.getRequestDispatcher("/servicios/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Servicio servicio = new Servicio(request.getParameter("nombre_servicio"), request.getParameter("especialista"), request.getParameter("id_vehiculo"), Integer.parseInt(request.getParameter("nivel_gas_inicio")), request.getParameter("fecha"), request.getParameter("hora"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());
        servicioDAO.insertar(servicio);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(servicio));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Servicio> listaServicios = servicioDAO.listarServicio();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaServicios));
    }

    private void mostrarPorEspecialista(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Servicio> listaServiciosPorEspecialista = servicioDAO.listarServicioPorEspecialista(request.getParameter("id_especialista"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaServiciosPorEspecialista));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Servicio servicio = new Servicio(Integer.parseInt(request.getParameter("id_servicio")), request.getParameter("nombre_servicio"), request.getParameter("especialista"), request.getParameter("vehiculo"), Integer.parseInt(request.getParameter("nivel_gas_inicio")), Integer.parseInt(request.getParameter("nivel_gas_fin")),request.getParameter("fecha"), request.getParameter("hora"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString()); 
        servicioDAO.actualizar(servicio);
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(servicio));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Servicio servicio = servicioDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_servicio")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());  
        servicioDAO.eliminar(servicio);
               
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(servicio));
    }
}
