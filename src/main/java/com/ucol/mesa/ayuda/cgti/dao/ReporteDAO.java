package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Reporte;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author andreaml
 */
public class ReporteDAO {
    private ConexionBD conexionBD;
    private Connection connection;

    public ReporteDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar reporte
    public boolean insertar(Reporte reporte) throws SQLException {
        String sql = "INSERT INTO REPORTE(id_reporte, fecha, hora, num_usuarios, num_especialistas, num_tickets_asignados, num_tickets_sin_asignar, num_tickets_atendiendo, num_tickets_cerrados, num_tickets_calendarizados, num_tickets_solucionados, num_casos_satisfechos, num_casos_insatisfechos) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        System.out.println(reporte.getId_reporte());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, reporte.getId_reporte());
        statement.setString(2, reporte.getFecha().toString());
        statement.setString(3, reporte.getHora().toString());
        statement.setInt(4, reporte.getNumUsuarios());
        statement.setInt(5, reporte.getNumEspecialistas());
        statement.setInt(6, reporte.getNumTicketsAsignados());
        statement.setInt(7, reporte.getNumTicketsSinAsignar());
        statement.setInt(8, reporte.getNumTicketsAtendiendo());
        statement.setInt(9, reporte.getNumTicketsCerrados());
        statement.setInt(10, reporte.getNumTicketsCalendarizados());
        statement.setInt(11, reporte.getNumTicketsSolucionados());
        statement.setInt(12, reporte.getNumCasosSatisfechos());
        statement.setInt(13, reporte.getNumCasosInsatisfechos());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los reportes
    public List<Reporte> listarReporte() throws SQLException {

        List<Reporte> listaReporte = new ArrayList<Reporte>();
        String sql = "SELECT * FROM REPORTE";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id_reporte = resulSet.getInt("id_reporte");
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");
            LocalDate fecha = LocalDate.parse(resulSet.getString("fecha"), dtf);
            DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
            LocalTime hora = LocalTime.parse(resulSet.getString("hora"),dtf2);
            int numUsuarios = resulSet.getInt("num_usuarios");
            int numEspecialistas = resulSet.getInt("num_especialistas");
            int numTicketsAsignados = resulSet.getInt("num_tickets_asignados");
            int numTicketsSinAsignar = resulSet.getInt("num_tickets_sin_asignar");
            int numTicketsAtendiendo = resulSet.getInt("num_tickets_atendiendo");
            int numTicketsCerrados = resulSet.getInt("num_tickets_cerrados");
            int numTicketsCalendarizados = resulSet.getInt("num_tickets_calendarizados");
            int numTicketsSolucionados = resulSet.getInt("num_tickets_solucionados");
            int numCasosSatisfechos = resulSet.getInt("num_casos_satisfechos");
            int numCasosInsatisfechos = resulSet.getInt("num_casos_insatisfechos");

            Reporte reporte = new Reporte(id_reporte, fecha, hora, numUsuarios, numEspecialistas, numTicketsAsignados, numTicketsSinAsignar, numTicketsAtendiendo, numTicketsCerrados, numTicketsCalendarizados, numTicketsSolucionados, numCasosSatisfechos, numCasosInsatisfechos);
            listaReporte.add(reporte);
        }
        conexionBD.desconectar();
        return listaReporte;
    }
    
    //Obtener por id
    public Reporte obtenerPorId(String id_reporte) throws SQLException {
        Reporte reporte = null;

        String sql = "SELECT * FROM REPORTE WHERE id_reporte=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id_reporte);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");
            LocalDate fecha = LocalDate.parse(res.getString("fecha"), dtf);
            DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
            LocalTime hora = LocalTime.parse(res.getString("hora"),dtf2);
            reporte = new Reporte(res.getInt("id_reporte"), fecha, hora, res.getInt("num_usuarios"), res.getInt("num_especialistas"), res.getInt("num_tickets_asignados") , res.getInt("num_tickets_sin_asignar"), res.getInt("num_tickets_atendiendo"), res.getInt("num_tickets_cerrados"), res.getInt("num_tickets_calendarizados"), res.getInt("num_tickets_solucionados"), res.getInt("num_casos_satisfechos"), res.getInt("num_casos_insatisfechos"));
        }
        res.close();
        conexionBD.desconectar();

        return reporte;
    }
    
    //Actualizar
    public boolean actualizar(Reporte reporte) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE REPORTE SET id_reporte=?, fecha=?, hora=?, num_usuarios=?, num_especialistas=?, num_tickets_asignados=?, num_tickets_sin_asignar=?, num_tickets_atendiendo=?, num_tickets_cerrados=?, num_tickets_calendarizados=?, num_tickets_solucionados=?, num_casos_satisfechos=?, num_casos_insatisfechos=? WHERE id_reporte=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, reporte.getId_reporte());
        statement.setString(2, reporte.getFecha().toString());
        statement.setString(3, reporte.getHora().toString());
        statement.setInt(4, reporte.getNumUsuarios());
        statement.setInt(5, reporte.getNumEspecialistas());
        statement.setInt(6, reporte.getNumTicketsAsignados());
        statement.setInt(7, reporte.getNumTicketsSinAsignar());
        statement.setInt(8, reporte.getNumTicketsAtendiendo());
        statement.setInt(9, reporte.getNumTicketsCerrados());
        statement.setInt(10, reporte.getNumTicketsCalendarizados());
        statement.setInt(11, reporte.getNumTicketsSolucionados());
        statement.setInt(12, reporte.getNumCasosSatisfechos());
        statement.setInt(13, reporte.getNumCasosInsatisfechos());

        statement.setInt(14, reporte.getId_reporte());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //eliminar
    public boolean eliminar(Reporte reporte) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM REPORTE WHERE id_reporte=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, reporte.getId_reporte());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}