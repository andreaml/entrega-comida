package com.ucol.mesa.ayuda.cgti.dao;

/**
 * @author ASUS
 */
import com.ucol.mesa.ayuda.cgti.model.Platillo;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DependenciaDAO {
    private ConexionBD conexionBD;
    private Connection connection;

    public DependenciaDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
    }    
    
    //Agregar Dependencia
    public boolean insertar(Platillo dependencia ) throws SQLException {
        String sql = "INSERT INTO DEPENDENCIA(campus, nombre_dependencia, direccion) VALUES (?,?,?)";
        System.out.println(dependencia.getId_dependencia());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, dependencia.getCampus());
        statement.setString(2, dependencia.getNombreDependencia());
        statement.setString(3, dependencia.getDireccion());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todas los dependencias
    public List<Platillo> listarDependencias() throws SQLException {

        List<Platillo> listaDependencias = new ArrayList<Platillo>();
        String sql = "SELECT * FROM DEPENDENCIA";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);
        
        while (resulSet.next()) {
            int id_dependencia = resulSet.getInt("id_dependencia");
            String campus = resulSet.getString("campus");
            String nombre_dependencia = resulSet.getString("nombre_dependencia");
            String direccion = resulSet.getString("direccion");

            Platillo dependencia = new Platillo(campus, nombre_dependencia,direccion);
            dependencia.setId_dependencia(id_dependencia);
            listaDependencias.add(dependencia);
        }
        conexionBD.desconectar();
        return listaDependencias;
    }
    
    //Obtener dependencia por id
    public Platillo obtenerPorId(int id_dependencia) throws SQLException {
        Platillo dependencia = null;

        String sql = "SELECT * FROM DEPENDENCIA WHERE id_dependencia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_dependencia);
      
        ResultSet res = statement.executeQuery();
        if (res.next()) {
            dependencia = new Platillo(res.getString("campus"), res.getString("nombre_dependencia"), res.getString("direccion"));
            dependencia.setId_dependencia(res.getInt("id_dependencia"));
        }
        res.close();
        conexionBD.desconectar();

        return dependencia;
    }
    
    //Actualizar dependencia
    public boolean actualizar(Platillo dependencia) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE DEPENDENCIA SET campus=?, nombre_dependencia=?, direccion=? WHERE id_dependencia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, dependencia.getCampus());
        statement.setString(2, dependencia.getNombreDependencia());
        statement.setString(3, dependencia.getDireccion());
        statement.setInt(4, dependencia.getId_dependencia());

        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //Eliminar dependencia
    public boolean eliminar(Platillo dependencia) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM DEPENDENCIA WHERE id_dependencia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, dependencia.getId_dependencia());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}
