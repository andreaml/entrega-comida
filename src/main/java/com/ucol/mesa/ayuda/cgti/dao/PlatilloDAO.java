package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Administrador;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Platillo;

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
public class PlatilloDAO {
    private final ConexionBD conexionBD;
    private Connection connection;
    private AdministradorDAO administradorDAO;

    public PlatilloDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        administradorDAO = new AdministradorDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar nombreUsuario
    public boolean insertar(Platillo platillo) throws SQLException {

        String sql = "INSERT INTO platillo(nombre_platillo,porcion,descripcion,num_dia,costo,id_administrador) VALUES (?,?,?,?,?,?)";
        System.out.println(platillo.getNombre_platillo());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, platillo.getNombre_platillo());
        statement.setInt(2, platillo.getPorcion());
        statement.setString(3, platillo.getDescripcion());
        statement.setInt(4, platillo.getNum_dia());
        statement.setFloat(5, platillo.getCosto());
        statement.setString(6, platillo.getId_administrador());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los usuarios
    public List<Platillo> listarPlatillos() throws SQLException {

        List<Platillo> listaPlatillos = new ArrayList<>();
        String sql = "SELECT * FROM platillo";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id_platillo = resulSet.getInt("id_platillo");
            String nombre_platillo = resulSet.getString("nombre_platillo");
            int porcion = resulSet.getInt("porcion");
            String descripcion = resulSet.getString("descripcion");
            int num_dia = resulSet.getInt("num_dia");
            float costo = resulSet.getFloat("costo");
            Administrador administrador = administradorDAO.obtenerPorId(resulSet.getString("id_administrador"));

            Platillo platillo = new Platillo(id_platillo,nombre_platillo, porcion, descripcion, num_dia, costo, administrador);
            
            listaPlatillos.add(platillo);
        }
        resulSet.close();
        statement.close();
        conexionBD.desconectar();
        return listaPlatillos;
    }
    
    //Obtener por id
    public Platillo obtenerPorId(int id_platillo) throws SQLException {
        Platillo platillo = null;

        String sql = "SELECT * FROM platillo WHERE id_platillo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_platillo);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Administrador administrador = administradorDAO.obtenerPorId(res.getString("id_administrador"));
            platillo = new Platillo(res.getInt("id_platillo"), res.getString("nombre_platillo"), res.getInt("porcion"), res.getString("descripcion"), res.getInt("num_dia"), res.getFloat("costo"), administrador);
        }
        res.close();
        statement.close();
        conexionBD.desconectar();

        return platillo;
    }
    
    public List<Platillo> obtenerPorDia(int dia) throws SQLException {
        Platillo platillo = null;
        List<Platillo> listaPlatillos = new ArrayList<>();

        String sql = "SELECT * FROM platillo WHERE num_dia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, dia);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Administrador administrador = administradorDAO.obtenerPorId(res.getString("id_administrador"));
            platillo = new Platillo(res.getInt("id_platillo"), res.getString("nombre_platillo"), res.getInt("porcion"), res.getString("descripcion"), res.getInt("num_dia"), res.getFloat("costo"), administrador);
            listaPlatillos.add(platillo);
        }
        res.close();
        statement.close();
        conexionBD.desconectar();

        return listaPlatillos;
    }
    
    //Actualizar
    public boolean actualizar(Platillo platillo) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE platillo SET nombre_platillo=?,porcion=?,descripcion=?,num_dia=?,costo=?,id_administrador=? WHERE id_platillo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, platillo.getNombre_platillo());
        statement.setInt(2, platillo.getPorcion());
        statement.setString(3, platillo.getDescripcion());
        statement.setInt(4, platillo.getNum_dia());
        statement.setFloat(5, platillo.getCosto());
        statement.setString(6, platillo.getId_administrador());
        statement.setInt(7, platillo.getId_platillo());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    
    //eliminar
    public boolean eliminar(Platillo platillo) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM platillo WHERE id_platillo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, platillo.getId_platillo());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}