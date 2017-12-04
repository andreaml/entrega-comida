/*
corregido
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucol.mesa.ayuda.cgti.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ucol.mesa.ayuda.cgti.dao.ReporteDAO;
import com.ucol.mesa.ayuda.cgti.model.Reporte;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author andreaml
 */
public class ReporteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ReporteDAO reporteDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            reporteDAO = new ReporteDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public ReporteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        String action = request.getParameter("action");
        System.out.println(action);
        try {
            switch (action) {
                case "index":
                    index(request, response);
                    break;
                case "nuevo":
                    nuevo(request, response);
                    break;
                case "register":
                    System.out.println("entro");
                    registrar(request, response);
                    break;
                case "mostrar":
                    mostrar(request, response);
                    break;
                case "showedit":
                    showEditar(request, response);
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
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        doGet(request, response);
    }
    
    private void index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        //mostrar(request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");
        LocalDate fecha = LocalDate.parse(request.getParameter("fecha"), dtf);
        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalTime hora = LocalTime.parse(request.getParameter("hora"),dtf2);
        Reporte reporte = new Reporte(Integer.parseInt(request.getParameter("id_reporte")), fecha, hora, Integer.parseInt(request.getParameter("num_usuarios")), Integer.parseInt(request.getParameter("num_especialistas")), Integer.parseInt(request.getParameter("num_tickets_asignados")), Integer.parseInt(request.getParameter("num_tickets_sin_asignar")), Integer.parseInt(request.getParameter("num_tickets_atendiendo")), Integer.parseInt(request.getParameter("num_tickets_cerrados")), Integer.parseInt(request.getParameter("num_tickets_calendarizados")), Integer.parseInt(request.getParameter("num_tickets_solucionados")), Integer.parseInt(request.getParameter("num_casos_satisfechos")), Integer.parseInt(request.getParameter("num_casos_insatisfechos")));
        reporteDAO.insertar(reporte);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/reportes/register.jsp");
        dispatcher.forward(request, response);
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/reportes/mostrar.jsp");
        List<Reporte> listaReporte = reporteDAO.listarReporte();
        request.setAttribute("lista", listaReporte);
        dispatcher.forward(request, response);
    }

    private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Reporte reporte = reporteDAO.obtenerPorId(request.getParameter("reporte"));
        request.setAttribute("reporte", reporte);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/reportes/editar.jsp");
        dispatcher.forward(request, response);
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");
        LocalDate fecha = LocalDate.parse(request.getParameter("fecha"), dtf);
        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalTime hora = LocalTime.parse(request.getParameter("hora"),dtf2);
        Reporte reporte = new Reporte(Integer.parseInt(request.getParameter("id_reporte")), fecha, hora, Integer.parseInt(request.getParameter("num_usuarios")), Integer.parseInt(request.getParameter("num_especialistas")), Integer.parseInt(request.getParameter("num_tickets_asignados")), Integer.parseInt(request.getParameter("num_tickets_sin_asignar")), Integer.parseInt(request.getParameter("num_tickets_atendiendo")), Integer.parseInt(request.getParameter("num_tickets_cerrados")), Integer.parseInt(request.getParameter("num_tickets_calendarizados")), Integer.parseInt(request.getParameter("num_tickets_solucionados")), Integer.parseInt(request.getParameter("num_casos_satisfechos")), Integer.parseInt(request.getParameter("num_casos_insatisfechos")));
        reporteDAO.actualizar(reporte);
        index(request, response);
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Reporte reporte = reporteDAO.obtenerPorId(request.getParameter("id_reporte"));
        reporteDAO.eliminar(reporte);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}