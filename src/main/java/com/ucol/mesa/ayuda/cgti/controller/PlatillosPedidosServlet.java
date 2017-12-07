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

import com.ucol.mesa.ayuda.cgti.dao.PlatillosPedidosDAO;
import com.ucol.mesa.ayuda.cgti.model.PlatillosPedidos;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class PlatillosPedidosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    PlatillosPedidosDAO platillosPedidosDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            platillosPedidosDAO = new PlatillosPedidosDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public PlatillosPedidosServlet() {
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
                    case "mostrarPorPedidoId":
                        mostrarPorPedidoId(request, response);
                        break;
                    case "editar":
                        editar(request, response);
                        break;
                    case "eliminar":
                        eliminarPorPedidoId(request, response);
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
        ServletContext servletContext= request.getServletContext();
        servletContext.getRequestDispatcher("/platillos-pedidos/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        PlatillosPedidos platillosPedidos = new PlatillosPedidos(Integer.parseInt(request.getParameter("id_platillo")), Integer.parseInt(request.getParameter("cantidad_platillo")), Integer.parseInt(request.getParameter("num_pedido")), Float.parseFloat(request.getParameter("subtotal")));
        platillosPedidosDAO.insertar(platillosPedidos);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(platillosPedidos));

    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<PlatillosPedidos> listaPlatillosPedidos = platillosPedidosDAO.listarPlatillosPedidos();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaPlatillosPedidos));
    }
    
    private void mostrarPorPedidoId(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<PlatillosPedidos> listaPlatillosPedidos = platillosPedidosDAO.obtenerPorPedidoId(Integer.parseInt(request.getParameter("num_pedido")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaPlatillosPedidos));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        PlatillosPedidos platillosPedidos = new PlatillosPedidos(Integer.parseInt(request.getParameter("id_platillo")), Integer.parseInt(request.getParameter("cantidad_platillo")), Integer.parseInt(request.getParameter("num_pedido")), Float.parseFloat(request.getParameter("subtotal")));
        platillosPedidos.setId_platillos_pedidos(Integer.parseInt(request.getParameter("id_platillos_pedidos")));
        platillosPedidosDAO.actualizar(platillosPedidos);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(platillosPedidos));
    }

    private void eliminarPorPedidoId(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());  
        platillosPedidosDAO.eliminarPorPedidos(Integer.parseInt(request.getParameter("num_pedido")));
        out.print("Platillos eliminados con éxito");
//        Gson jsonBuilder = new Gson();
//        out.print(jsonBuilder.toJson(""));
    }
}
