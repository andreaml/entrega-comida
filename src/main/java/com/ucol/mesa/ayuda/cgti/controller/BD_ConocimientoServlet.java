/*
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

import com.ucol.mesa.ayuda.cgti.dao.BD_ConocimientoDAO;
import com.ucol.mesa.ayuda.cgti.model.BD_Conocimiento;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author andreaml
 */
public class BD_ConocimientoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    BD_ConocimientoDAO bdConocimientoDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            bdConocimientoDAO = new BD_ConocimientoDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public BD_ConocimientoServlet() {
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
        BD_Conocimiento bd_conocimiento = new BD_Conocimiento(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("reporte")), Integer.parseInt(request.getParameter("ticket")));
        bdConocimientoDAO.insertar(bd_conocimiento);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/bd_conocimientos/register.jsp");
        dispatcher.forward(request, response);
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/bd_conocimientos/mostrar.jsp");
        List<BD_Conocimiento> listaBD_Conocimientos = bdConocimientoDAO.listarBD_Conocimiento();
        request.setAttribute("lista", listaBD_Conocimientos);
        dispatcher.forward(request, response);
    }

    private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        BD_Conocimiento bd_conocimiento = bdConocimientoDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("bd_conocimiento", bd_conocimiento);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/bd_conocimientos/editar.jsp");
        dispatcher.forward(request, response);
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        BD_Conocimiento bd_conocimiento = new BD_Conocimiento(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("reporte")), Integer.parseInt(request.getParameter("ticket")));

        bdConocimientoDAO.actualizar(bd_conocimiento);
        index(request, response);
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        BD_Conocimiento bd_conocimiento = bdConocimientoDAO.obtenerPorId(Integer.parseInt(request.getParameter("id")));
        bdConocimientoDAO.eliminar(bd_conocimiento);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
