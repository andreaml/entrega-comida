package com.ucol.mesa.ayuda.cgti.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ucol.mesa.ayuda.cgti.dao.ClienteDAO;
import com.ucol.mesa.ayuda.cgti.model.Cliente;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

/**
 * @author cmiranda
 */
public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ClienteDAO clienteDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {

            clienteDAO = new ClienteDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    
    public ClienteServlet() {
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
                e.getStackTrace();
                PrintWriter out = response.getWriter();
                out.print(e.getSQLState());
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
        //RequestDispatcher dispatcher = request.getRequestDispatcher("atnUsuarios/mostrar.jsp");
        //dispatcher.forward(request, response);
        ServletContext servletContext= request.getServletContext();
        servletContext.getRequestDispatcher("/atnUsuarios/mostrar.jsp").forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Cliente cliente = new Cliente(request.getParameter("correo"), request.getParameter("primer_nombre"), request.getParameter("segundo_nombre"), request.getParameter("apellido_paterno"), request.getParameter("apellido_materno"), request.getParameter("telefono"), request.getParameter("fecha_nacimiento"), request.getParameter("domicilio"), Float.parseFloat(request.getParameter("longitud")), Float.parseFloat(request.getParameter("latitud")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());
        clienteDAO.insertar(cliente);

        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(cliente));
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Cliente> listaClientes = clienteDAO.listarClientes();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(listaClientes));
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Cliente cliente = new Cliente(request.getParameter("correo"), request.getParameter("primer_nombre"), request.getParameter("segundo_nombre"), request.getParameter("apellido_paterno"), request.getParameter("apellido_materno"), request.getParameter("telefono"), request.getParameter("fecha_nacimiento"), request.getParameter("domicilio"), Float.parseFloat(request.getParameter("longitud")), Float.parseFloat(request.getParameter("latitud")));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString()); 
        clienteDAO.actualizar(cliente, request.getParameter("correoViejo"));
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(cliente));
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Cliente cliente = clienteDAO.obtenerPorId(request.getParameter("correo"));
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        System.out.println(response.toString());  
        clienteDAO.eliminar(cliente);
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(cliente));
    }
    
}
