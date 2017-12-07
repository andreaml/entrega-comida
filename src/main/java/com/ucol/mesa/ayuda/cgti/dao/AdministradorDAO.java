package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Administrador;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author andreaml
 */
public class AdministradorDAO {
    private final ConexionBD conexionBD;
    private Connection connection;

    public AdministradorDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar nombreUsuario
    public boolean insertar(Administrador administrador) throws SQLException {
        
        String sql = "INSERT INTO administrador(correo,contrasenia,primer_nombre,segundo_nombre,apellido_paterno,apellido_materno) VALUES (?,PASSWORD(?),?,?,?,?)";
        System.out.println(administrador.getCorreo());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, administrador.getCorreo());
        statement.setString(2, administrador.getContrasenia());
        statement.setString(3, administrador.getPrimer_nombre());
        statement.setString(4, administrador.getSegundo_nombre());
        statement.setString(5, administrador.getApellido_paterno());
        statement.setString(6, administrador.getApellido_materno());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los usuarios
    public List<Administrador> listarAdministradores() throws SQLException {

        List<Administrador> listaAdministradores = new ArrayList<>();
        String sql = "SELECT * FROM administrador";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            String correo = resulSet.getString("correo");
            String primer_nombre = resulSet.getString("primer_nombre");
            String segundo_nombre = resulSet.getString("segundo_nombre");
            String apellido_paterno = resulSet.getString("apellido_paterno");
            String apellido_materno = resulSet.getString("apellido_materno");
            

            Administrador administrador = new Administrador(correo, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno);
            listaAdministradores.add(administrador);
        }
        conexionBD.desconectar();
        return listaAdministradores;
    }
    
    //Obtener por id
    public Administrador obtenerPorId(String correo) throws SQLException {
        Administrador administrador = null;

        String sql = "SELECT * FROM administrador WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            administrador = new Administrador(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"));
        }
        res.close();
        conexionBD.desconectar();

        return administrador;
    }
    
    public Administrador obtenerPorCorreoContrasenia(String correo, String contrasenia) throws SQLException {
        Administrador administrador = null;

        String sql = "SELECT * FROM administrador WHERE correo=? AND contrasenia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);
        statement.setString(2, contrasenia);
        ResultSet res = statement.executeQuery();
        
        if (res.next()) {
            administrador = new Administrador(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"));
            administrador.setContrasenia(res.getString("contrasenia"));
        }
        
        res.close();
        conexionBD.desconectar();

        return administrador;
    }
    
    //Actualizar
    public boolean actualizar(Administrador administrador, String correoViejo) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE administrador SET correo=?, primer_nombre=?, segundo_nombre=?, apellido_paterno=?, apellido_materno=? WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, administrador.getCorreo());
        statement.setString(2, administrador.getPrimer_nombre());
        statement.setString(3, administrador.getSegundo_nombre());
        statement.setString(4, administrador.getApellido_paterno());
        statement.setString(5, administrador.getApellido_materno());
        statement.setString(6, correoViejo);
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //Actualizar
    public boolean actualizarContrasenia(String correo, String contrasenia) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE administrador SET contrasenia=PASSWORD(?) WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, contrasenia);
        statement.setString(2, correo);
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //eliminar
    public boolean eliminar(Administrador atnusuarios) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM administrador WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, atnusuarios.getCorreo());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}