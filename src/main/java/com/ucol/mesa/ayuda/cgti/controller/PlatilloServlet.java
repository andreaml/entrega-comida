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

import com.ucol.mesa.ayuda.cgti.dao.PlatilloDAO;
import com.ucol.mesa.ayuda.cgti.model.Platillo;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class PlatilloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    PlatilloDAO platilloDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            platilloDAO = new PlatilloDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public PlatilloServlet() {
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
                    case "mostrarPorDia":
                        mostrarPorDia(request, response);
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
        servletContext.getRequestDispatcher("/platillo/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Platillo platillo = new Platillo(request.getParameter("nombre_platillo"), Integer.parseInt(request.getParameter("porcion")), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("num_dia")), Float.parseFloat(request.getParameter("costo")), request.getParameter("id_administrador"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());
        platilloDAO.insertar(platillo);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(platillo));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Platillo> listaPlatillos = platilloDAO.listarPlatillos();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaPlatillos));
    }
    
    private void mostrarPorDia(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Platillo> listaPlatillos = platilloDAO.obtenerPorDia(Integer.parseInt(request.getParameter("num_dia")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaPlatillos));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Platillo platillo = new Platillo(request.getParameter("nombre_platillo"), Integer.parseInt(request.getParameter("porcion")), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("num_dia")), Float.parseFloat(request.getParameter("costo")), request.getParameter("id_administrador"));
        platillo.setId_platillo(Integer.parseInt(request.getParameter("id_platillo")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString()); 
        platilloDAO.actualizar(platillo);
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(platillo));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Platillo platillo = platilloDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_platillo")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());  
        platilloDAO.eliminar(platillo);
               
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(platillo));
    }
}
