/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucol.mesa.ayuda.cgti.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ucol.mesa.ayuda.cgti.dao.AdministradorDAO;
import com.ucol.mesa.ayuda.cgti.model.Administrador;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ricar
 */
public class InicioAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    AdministradorDAO administradorDAO;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {
            administradorDAO = new AdministradorDAO(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public InicioAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Servlet..");
        if (request.getParameter("action") != null) {
            String action = request.getParameter("action");
            System.out.println(action);
            try {
                switch (action) {
                    case "index":
                        index(request, response);
                        break;
                    case "iniciarSesion":
                        System.out.println("entro");
                        iniciarSesion(request, response);
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
        servletContext.getRequestDispatcher("/inicio-sesion.jsp").forward(request, response);
    }
    
    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        /*aqui va funcionalidad de inicio de sesion:
            -Se recibe el tipo de usuario (especialista o atnUsuario), correo y contraseña
            -Se busca en bd si existe un usuario con correo y contraseña enviados (con un select)
                -Si se obtiene el usuario, devuelve estatus aprobatorio
                -Si no se obtiene el usuario, devolver error (porque puede ser problema de red) o estatus denegado
        */
        //Usuario_ user = new Usuario_(request.getParameter("correo"), request.getParameter("contrasenia"));
        String correo = request.getParameter("correo").replace("%40", "@");
        String contrasenia = request.getParameter("contrasenia").replace("%40", "@");
        System.out.println(correo);
        Administrador administrador = administradorDAO.obtenerPorCorreoContrasenia(correo,contrasenia);
        System.out.println(correo);
        System.out.println(administrador);
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
                
        if(administrador == null)
        {
        String mensaje = "Correo, Tipo usuario o Contraseña incorrecta";
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("mensaje", mensaje);
        jsonObject.addProperty("status", 404);
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(jsonObject));
        }
        else
        {
        String mensaje = "Ingreso correcto";
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("mensaje", mensaje);
        jsonObject.addProperty("status", 200);
        
        Gson jsonBuilder = new Gson();
        out.print(jsonBuilder.toJson(jsonObject));        
        }
        
    }
}
