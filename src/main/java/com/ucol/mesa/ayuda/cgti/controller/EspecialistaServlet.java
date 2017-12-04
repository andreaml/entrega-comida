package com.ucol.mesa.ayuda.cgti.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ucol.mesa.ayuda.cgti.dao.EspecialistaDAO;
import com.ucol.mesa.ayuda.cgti.model.Especialista;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;


/**
 * @author cmiranda
 */
public class EspecialistaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    EspecialistaDAO especialistaDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            especialistaDAO = new EspecialistaDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public EspecialistaServlet() {
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
                    case "mostrarPorId":
                        mostrarPorId(request, response);
                        break;
                    case "mostrarPorArea":
                        mostrarPorArea(request, response);
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/especialistas/mostrar.jsp");
        dispatcher.forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Especialista especialista = new Especialista(request.getParameter("correo"), request.getParameter("primer_nombre"), request.getParameter("segundo_nombre"), request.getParameter("apellido_paterno"), request.getParameter("apellido_materno"), Integer.parseInt(request.getParameter("area")), Integer.parseInt(request.getParameter("num_trabajador")), request.getParameter("profesion"));
        especialistaDAO.insertar(especialista);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(especialista));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Especialista> listaEspecialista = especialistaDAO.listarEspecialistas();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaEspecialista));
    }
    
    private void mostrarPorId(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        Especialista especialista = especialistaDAO.obtenerPorId(request.getParameter("correo"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(especialista));
    } 
    
    private void mostrarPorArea(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Especialista> listaEspecialista = especialistaDAO.listarEspecialistasPorArea(Integer.parseInt(request.getParameter("id_area")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaEspecialista));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Especialista especialista = new Especialista(request.getParameter("correo"), request.getParameter("primer_nombre"), request.getParameter("segundo_nombre"), request.getParameter("apellido_paterno"), request.getParameter("apellido_materno"), Integer.parseInt(request.getParameter("area")), Integer.parseInt(request.getParameter("num_trabajador")), request.getParameter("profesion"));
        especialistaDAO.actualizar(especialista, request.getParameter("correoViejo"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(especialista));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Especialista especialista = especialistaDAO.obtenerPorId(request.getParameter("correo"));
        especialistaDAO.eliminar(especialista);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
