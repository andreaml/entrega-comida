package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Servicio;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Especialista;
import com.ucol.mesa.ayuda.cgti.model.Vehiculo;

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
public class ServicioDAO {
    private ConexionBD conexionBD;
    private Connection connection;
    private EspecialistaDAO especialistaDAO;
    private VehiculoDAO vehiculoDAO;

    public ServicioDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        especialistaDAO = new EspecialistaDAO(jdbcURL, jdbcUsername, jdbcPassword);
        vehiculoDAO = new VehiculoDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar servicio
    public boolean insertar(Servicio servicio) throws SQLException {
        String sql = "INSERT INTO SERVICIO(nombre_servicio, id_vehiculo, nivel_gas_inicio, nivel_gas_fin, especialista, fecha, hora) VALUES (?,?,?,?,?,?,?)";
        System.out.println(servicio.getId_servicio());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, servicio.getNombreServicio());
        statement.setString(2, servicio.getId_vehiculo());
        statement.setInt(3, servicio.getNivelGasolinaInicio());
        statement.setInt(4, servicio.getNivelGasolinaFin());
        statement.setString(5, servicio.getEspecialistaString());
        statement.setString(6, servicio.getFecha());
        statement.setString(7, servicio.getHora());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los servicios
    public List<Servicio> listarServicio() throws SQLException {

        List<Servicio> listaServicio = new ArrayList<Servicio>();
        String sql = "SELECT * FROM SERVICIO";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resulSet = statement.executeQuery();

        while (resulSet.next()) {
            int id_servicio = resulSet.getInt("id_servicio");
            String nombreServicio = resulSet.getString("nombre_servicio");
            //int dependencia = resulSet.getInt("dependencia");
            Especialista especialista= especialistaDAO.obtenerPorId(resulSet.getString("especialista"));
            Vehiculo vehiculo = vehiculoDAO.obtenerPorId(resulSet.getString("id_vehiculo"));
            int nivelGasolinaInicio = resulSet.getInt("nivel_gas_inicio");
            int nivelGasolinaFin = resulSet.getInt("nivel_gas_fin");
            String fecha = resulSet.getString("fecha");
            String hora = resulSet.getString("hora");

            Servicio servicio = new Servicio(id_servicio, nombreServicio, especialista, vehiculo, nivelGasolinaInicio, fecha, hora);
            servicio.setNivelGasolinaFin(nivelGasolinaFin);
            listaServicio.add(servicio);
        }
        conexionBD.desconectar();
        return listaServicio;
    }
    
    // listar todos los servicios que tengan idEspecialista en común
    public List<Servicio> listarServicioPorEspecialista(String id_especialista) throws SQLException {

        List<Servicio> listaServicioPorEspecialista = new ArrayList<Servicio>();
        String sql = "SELECT * FROM SERVICIO WHERE especialista = ?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id_especialista);
        ResultSet resulSet = statement.executeQuery();
        
        while (resulSet.next()) {
            int id_servicio = resulSet.getInt("id_servicio");
            String nombreServicio = resulSet.getString("nombre_servicio");
            //String especialista = resulSet.getString("especialista");
            Especialista especialista= especialistaDAO.obtenerPorId(resulSet.getString("especialista"));
            Vehiculo vehiculo = vehiculoDAO.obtenerPorId(resulSet.getString("id_vehiculo"));
            int nivelGasolinaInicio = resulSet.getInt("nivel_gas_inicio");
            int nivelGasolinaFin = resulSet.getInt("nivel_gas_fin");
            String fecha = resulSet.getString("fecha");
            String hora = resulSet.getString("hora");

            Servicio servicio = new Servicio(id_servicio, nombreServicio, especialista, vehiculo, nivelGasolinaInicio, fecha, hora);
            servicio.setNivelGasolinaFin(nivelGasolinaFin);
            listaServicioPorEspecialista.add(servicio);
        }
        conexionBD.desconectar();
        return listaServicioPorEspecialista;
    }
    
    //Obtener por id
    public Servicio obtenerPorId(int id_servicio) throws SQLException {
        Servicio servicio = null;

        String sql = "SELECT * FROM SERVICIO WHERE id_servicio=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_servicio);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Especialista especialista=especialistaDAO.obtenerPorId(res.getString("especialista"));
            servicio = new Servicio(res.getInt("id_servicio"), res.getString("nombre_servicio"), especialista, res.getString("id_vehiculo"), res.getInt("nivel_gas_inicio"), res.getInt("nivel_gas_fin"), res.getString("fecha"), res.getString("hora"));
            System.out.println(servicio);
        }
        res.close();
        conexionBD.desconectar();

        return servicio;
    }
    
    //Actualizar
    public boolean actualizar(Servicio servicio) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE SERVICIO SET id_servicio=?, nombre_servicio=?, id_vehiculo=?, nivel_gas_inicio=?, nivel_gas_fin=?, especialista=?, fecha=?, hora=? WHERE id_servicio=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, servicio.getId_servicio());
        statement.setString(2, servicio.getNombreServicio());
        statement.setString(3, servicio.getId_vehiculo());
        statement.setInt(4, servicio.getNivelGasolinaInicio());
        statement.setInt(5, servicio.getNivelGasolinaFin());
        statement.setString(6, servicio.getEspecialistaString());
        statement.setString(7, servicio.getFecha());
        statement.setString(8, servicio.getHora());
        statement.setInt(9, servicio.getId_servicio());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //eliminar
    public boolean eliminar(Servicio servicio) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM SERVICIO WHERE id_servicio=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, servicio.getId_servicio());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}