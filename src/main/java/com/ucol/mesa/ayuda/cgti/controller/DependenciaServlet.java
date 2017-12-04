package com.ucol.mesa.ayuda.cgti.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ucol.mesa.ayuda.cgti.dao.DependenciaDAO;
import com.ucol.mesa.ayuda.cgti.model.Dependencia;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 * @author cmiranda
 */
public class DependenciaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    DependenciaDAO dependenciaDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            dependenciaDAO = new DependenciaDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public DependenciaServlet() {
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
        servletContext.getRequestDispatcher("/dependencias/mostrar.jsp").forward(request, response);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("dependencias/mostrar.jsp");
//        dispatcher.forward(request, response);
    }
    
    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Dependencia dependencia = new Dependencia(request.getParameter("campus"), request.getParameter("nombre_dependencia"), request.getParameter("direccion"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());
        dependenciaDAO.insertar(dependencia);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(dependencia));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Dependencia> listaDependencias = dependenciaDAO.listarDependencias();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaDependencias));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Dependencia dependencia = new Dependencia(request.getParameter("campus"), request.getParameter("nombre_dependencia"), request.getParameter("direccion"));
        dependencia.setId_dependencia(Integer.parseInt(request.getParameter("id_dependencia")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());      
        dependenciaDAO.actualizar(dependencia);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(dependencia));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Dependencia dependencia = dependenciaDAO.obtenerPorId(Integer.parseInt(request.getParameter("id_dependencia")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());      
        dependenciaDAO.eliminar(dependencia);
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(dependencia));
    }
}
