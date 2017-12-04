package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.BD_Conocimiento;
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
public class BD_ConocimientoDAO {
    private ConexionBD conexionBD;
    private Connection connection;

    public BD_ConocimientoDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar conocimiento
    public boolean insertar(BD_Conocimiento bd_conocimiento) throws SQLException {
        String sql = "INSERT INTO BD_CONOCIMIENTO(id, reporte, ticket) VALUES (?,?,?)";
        System.out.println(bd_conocimiento.getId());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, bd_conocimiento.getId());
        statement.setInt(2, bd_conocimiento.getReporte());
        statement.setInt(3, bd_conocimiento.getTicket());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar conocimiento
    public List<BD_Conocimiento> listarBD_Conocimiento() throws SQLException {

        List<BD_Conocimiento> listaBD_Conocimiento = new ArrayList<BD_Conocimiento>();
        String sql = "SELECT * FROM BD_CONOCIMIENTO";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id = resulSet.getInt("id");
            int reporte = resulSet.getInt("reporte");
            int ticket = resulSet.getInt("ticket");

            BD_Conocimiento bd_conocimiento = new BD_Conocimiento(id, reporte, ticket);
            listaBD_Conocimiento.add(bd_conocimiento);
        }
        conexionBD.desconectar();
        return listaBD_Conocimiento;
    }
    
    //Obtener por id
    public BD_Conocimiento obtenerPorId(int id) throws SQLException {
        BD_Conocimiento bd_conocimiento = null;

        String sql = "SELECT * FROM BD_CONOCIMIENTO WHERE id=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            bd_conocimiento = new BD_Conocimiento(res.getInt("id"), res.getInt("reporte"), res.getInt("ticket"));
        }
        res.close();
        conexionBD.desconectar();

        return bd_conocimiento;
    }
    
    //Actualizar
    public boolean actualizar(BD_Conocimiento bd_conocimiento) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE BD_CONOCIMIENTO SET id=?, reporte=?, ticket=? WHERE id=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, bd_conocimiento.getId());
        statement.setInt(2, bd_conocimiento.getReporte());
        statement.setInt(3, bd_conocimiento.getTicket());
        statement.setInt(4, bd_conocimiento.getId());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //eliminar
    public boolean eliminar(BD_Conocimiento bd_conocimiento) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM BD_CONOCIMIENTO WHERE id=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, bd_conocimiento.getId());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}