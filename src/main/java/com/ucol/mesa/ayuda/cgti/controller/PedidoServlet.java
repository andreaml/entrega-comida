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

import com.ucol.mesa.ayuda.cgti.dao.PedidoDAO;
import com.ucol.mesa.ayuda.cgti.model.Pedido;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class PedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    PedidoDAO pedidoDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            pedidoDAO = new PedidoDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public PedidoServlet() {
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
        servletContext.getRequestDispatcher("/pedido/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        
        Pedido pedido = new Pedido(Integer.parseInt(request.getParameter("id_pedido")), request.getParameter("cliente"), request.getParameter("fecha"), request.getParameter("hora"), Float.parseFloat(request.getParameter("costo_total")), request.getParameter("estado_pedido"));
        Gson jsonBuilder = new Gson();
        System.out.println(jsonBuilder.toJson(pedido));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        pedidoDAO.insertar(pedido);
        out.print(jsonBuilder.toJson(pedido));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        System.out.println("entra mostrar");
        List<Pedido> listaPedidos = pedidoDAO.listarPedidos();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaPedidos));
    }


    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Pedido pedido = new Pedido(Integer.parseInt(request.getParameter("id_pedido")), request.getParameter("cliente"), request.getParameter("fecha"), request.getParameter("hora"), Float.parseFloat(request.getParameter("costo_total")), request.getParameter("estado_pedido"));
        Gson jsonBuilder = new Gson();
        System.out.println(jsonBuilder.toJson(request.getParameterMap()));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        //System.out.println( "HolaMundo" + vehiculoDAO.actualizar(vehiculo, request.getParameter("id_vehiculoViejo")));
        pedidoDAO.actualizar(pedido);
        out.print(jsonBuilder.toJson(pedido));
        
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Pedido pedido = pedidoDAO.obtenerPorId(request.getParameter("id_vehiculo"));
        //System.out.println("holamundoeliminado" + pedidoDAO.obtenerPorId(request.getParameter("id_pedido")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter(); 
        pedidoDAO.eliminar(pedido);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(pedido));
    }
}
