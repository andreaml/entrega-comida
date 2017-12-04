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

import com.ucol.mesa.ayuda.cgti.dao.TicketDAO;
import com.ucol.mesa.ayuda.cgti.model.Dependencia;
import com.ucol.mesa.ayuda.cgti.model.Ticket;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 *
 * @author andreaml
 */
public class TicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    TicketDAO ticketDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            ticketDAO = new TicketDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public TicketServlet() {
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
                    case "editarEva":
                        editarEva(request, response);
                    case "eliminar":
                        eliminar(request, response);
                        break;
                    case "mostrarPorId":
                        mostrarPorId(request, response);
                        break;
                    case "mostrarPorServicio":
                        mostrarPorServicio(request, response);
                        break;
                    default:
                        break;
                }
            } catch (SQLException e) {
                Gson jsonBuilder = new Gson();
        
                PrintWriter out = response.getWriter();
                out.print(jsonBuilder.toJson(e));
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
        servletContext.getRequestDispatcher("/tickets/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Ticket ticket;
        String emisor = request.getParameter("emisor").replace("%40", "@");
        if (request.getParameter("especialista") != null) {
            String especialista = request.getParameter("especialista").replace("%40", "@");
            ticket = new Ticket(request.getParameter("titulo"), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("tipo_servicio")), emisor, request.getParameter("fecha"), request.getParameter("hora"), 2);
            ticket.setEspecialistaString(especialista);
        } else {
            ticket = new Ticket(request.getParameter("titulo"), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("tipo_servicio")), emisor, request.getParameter("fecha"), request.getParameter("hora"), 1);
        }
        
        ticketDAO.insertar(ticket);
        ticket.setId_ticket(ticketDAO.obtenerUltimoIdInsertado(request.getParameter("fecha"), request.getParameter("hora")));

        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(ticket));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Ticket> listaTicket = ticketDAO.listarTickets();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaTicket));
    }
    
    private void mostrarPorServicio(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Ticket> listaTicketPorServicio = ticketDAO.mostrarPorServicio(Integer.parseInt(request.getParameter("servicio")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaTicketPorServicio));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Ticket ticket = new Ticket(request.getParameter("titulo"), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("tipo_servicio")), request.getParameter("emisor"), Integer.parseInt(request.getParameter("estado_ticket")));
        ticket.setComentarios(request.getParameter("comentario"));
        ticket.setId_ticket(Integer.parseInt(request.getParameter("id_ticket")));
        if (request.getParameter("especialista") != null) {
            String especialista = request.getParameter("especialista").replace("%40", "@");
            ticket.setEspecialistaString(especialista);
        }
        ticketDAO.actualizar(ticket);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(ticket));
    }
    
    private void editarEva(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        
        Ticket eva = new Ticket(request.getParameter("comentarios"), Integer.parseInt(request.getParameter("estado_satisfaccion")));
        eva.setId_ticket(Integer.parseInt(request.getParameter("id_ticket")));
        ticketDAO.actualizarEva(eva);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(eva));
    }
    
    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Ticket ticket = ticketDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_ticket")));
        ticketDAO.eliminar(ticket);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(ticket));
    }
    
    private void mostrarPorId(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Ticket ticket = ticketDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_ticket")));
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(ticket));
    }
}