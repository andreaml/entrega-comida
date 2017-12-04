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

import com.ucol.mesa.ayuda.cgti.dao.TipoServicioDAO;
import com.ucol.mesa.ayuda.cgti.model.TipoServicio;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class TipoServicioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    TipoServicioDAO tipoServicioDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            tipoServicioDAO = new TipoServicioDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public TipoServicioServlet() {
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
                out.print(e);
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
        servletContext.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        TipoServicio tipoServicio = new TipoServicio(request.getParameter("nombre_tipo_servicio"), Integer.parseInt(request.getParameter("area")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());
        tipoServicioDAO.insertar(tipoServicio);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(tipoServicio));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<TipoServicio> listaTipoServicio = tipoServicioDAO.listarTipoServicio();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaTipoServicio));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        TipoServicio tipoServicio = new TipoServicio(Integer.parseInt(request.getParameter("id_tipo_servicio")),request.getParameter("nombre_tipo_servicio"), Integer.parseInt(request.getParameter("area")));
        Gson jsonBuilder = new Gson();
        System.out.println(jsonBuilder.toJson(request.getParameterMap()));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        tipoServicioDAO.actualizar(tipoServicio);
        out.print(jsonBuilder.toJson(tipoServicio));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        TipoServicio tipoServicio = tipoServicioDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_tipo_servicio")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        tipoServicioDAO.eliminar(tipoServicio);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(tipoServicio));
    }
}
