package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Especialista;
import com.ucol.mesa.ayuda.cgti.model.Area;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author ASUS
 */
public class EspecialistaDAO {
    private ConexionBD conexionBD;
    private Connection connection;
    private AreaDAO areaDAO;

    public EspecialistaDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        areaDAO = new AreaDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }
    
    //Insertar especialista
    public boolean insertar(Especialista especialista)throws SQLException{
        String sql="INSERT INTO ESPECIALISTA (correo, num_trabajador, area, profesion, contrasenia, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno)VALUES (?,?,?,?,?,?,?,?,?)";
        System.out.println(especialista.getCorreo());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, especialista.getCorreo());
        statement.setInt(2, especialista.getNumTrabajador());
        statement.setInt(3, especialista.getAreaInt());
        statement.setString(4, especialista.getProfesion());
        statement.setString(5, especialista.getCorreo());
        statement.setString(6, especialista.getNombre1());
        statement.setString(7, especialista.getNombre2());
        statement.setString(8, especialista.getApellidoP());
        statement.setString(9, especialista.getApellidoM());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los especialistas
    public List<Especialista> listarEspecialistas() throws SQLException {

        List<Especialista> listaEspecialistas = new ArrayList<Especialista>();
        String sql = "SELECT * FROM ESPECIALISTA";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);
        
        while (resulSet.next()) {
            String correo = resulSet.getString("correo");
            String nombre1 = resulSet.getString("primer_nombre");
            String nombre2 = resulSet.getString("segundo_nombre");
            String apellidoP = resulSet.getString("apellido_paterno");
            String apellidoM = resulSet.getString("apellido_materno");
            //int area = resulSet.getInt("area");
            Area area = areaDAO.obtenerPorId(resulSet.getInt("area"));
            int numTrabajador = resulSet.getInt("num_trabajador");
            String profesion = resulSet.getString("profesion");

            Especialista especialista = new Especialista(correo, nombre1, nombre2, apellidoP, apellidoM, area, numTrabajador, profesion);
            listaEspecialistas.add(especialista);
        }
        conexionBD.desconectar();
        return listaEspecialistas;
    }
    
    // listar todos los especialistas por area
    public List<Especialista> listarEspecialistasPorArea(int idArea) throws SQLException {

        List<Especialista> listaEspecialistas = new ArrayList<Especialista>();
        String sql = "SELECT * FROM ESPECIALISTA WHERE area=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, idArea);
        ResultSet resulSet = statement.executeQuery();

        while (resulSet.next()) {
            String correo = resulSet.getString("correo");
            String nombre1 = resulSet.getString("primer_nombre");
            String nombre2 = resulSet.getString("segundo_nombre");
            String apellidoP = resulSet.getString("apellido_paterno");
            String apellidoM = resulSet.getString("apellido_materno");
            //int area = resulSet.getInt("area");
            Area area = areaDAO.obtenerPorId(resulSet.getInt("area"));
            int numTrabajador = resulSet.getInt("num_trabajador");
            String profesion = resulSet.getString("profesion");

            Especialista especialista = new Especialista(correo, nombre1, nombre2, apellidoP, apellidoM, area, numTrabajador, profesion);
            listaEspecialistas.add(especialista);
        }
        conexionBD.desconectar();
        return listaEspecialistas;
    }
    
    //Obtener especialista por id
    public Especialista obtenerPorId(String correo) throws SQLException {
        Especialista especialista = null;

        String sql = "SELECT * FROM ESPECIALISTA WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);
        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Area area = areaDAO.obtenerPorId(res.getInt("area"));
            especialista = new Especialista(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"), area, res.getInt("num_trabajador"), res.getString("profesion"));
            especialista.setContrasenia(res.getString("contrasenia"));
        }
        
        res.close();
        conexionBD.desconectar();

        return especialista;
    }
    
    public Especialista obtenerPorCorreoContrasenia(String correo, String contrasenia) throws SQLException {
        Especialista especialista = null;

        String sql = "SELECT * FROM ESPECIALISTA WHERE correo=? AND contrasenia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);
        statement.setString(2, contrasenia);
        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Area area = areaDAO.obtenerPorId(res.getInt("area"));
            especialista = new Especialista(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"), area, res.getInt("num_trabajador"), res.getString("profesion"));
            especialista.setContrasenia(res.getString("contrasenia"));
        }
        
        res.close();
        conexionBD.desconectar();

        return especialista;
    }
    
    //Actualizar especialista
    public boolean actualizar(Especialista especialista, String correoViejo) throws SQLException {
        boolean rowActualizar = false;
        //primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, num_trabajador
        String sql = "UPDATE ESPECIALISTA SET correo=?, primer_nombre=?, segundo_nombre=?, apellido_paterno=?, apellido_materno=?, area=?, num_trabajador=?, contrasenia=?, profesion=? WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, especialista.getCorreo());
        statement.setString(2, especialista.getNombre1());
        statement.setString(3, especialista.getNombre2());
        statement.setString(4, especialista.getApellidoP());
        statement.setString(5, especialista.getApellidoM());
        statement.setInt(6, especialista.getAreaInt());
        statement.setInt(7, especialista.getNumTrabajador());
        statement.setString(8, especialista.getContrasenia());
        statement.setString(9, especialista.getProfesion());
        statement.setString(10, correoViejo);
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //Eliminar especialista
    public boolean eliminar(Especialista especialista) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM ESPECIALISTA WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, especialista.getCorreo());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}
