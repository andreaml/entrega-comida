package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Cliente;
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
public class ClienteDAO {
    private ConexionBD conexionBD;
    private Connection connection;

    public ClienteDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar nombreUsuario
    public boolean insertar(Cliente cliente) throws SQLException {
        
        String sql = "INSERT INTO cliente(correo, contrasenia, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, telefono, fecha_nacimiento, domicilio, longitud, latitud) VALUES (?,PASSWORD(?),?,?,?,?,?,?,?,?,?)";
        
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        
        statement.setString(1, cliente.getCorreo());
        statement.setString(2, cliente.getContrasenia());
        statement.setString(3, cliente.getPrimer_nombre());
        statement.setString(4, cliente.getSegundo_nombre());
        statement.setString(5, cliente.getApellido_paterno());
        statement.setString(6, cliente.getApellido_materno());
        statement.setString(7, cliente.getTelefono());
        statement.setString(8, cliente.getFecha_nacimiento());
        statement.setString(9, cliente.getDomicilio());
        statement.setFloat(10, cliente.getLongitud());
        statement.setFloat(11, cliente.getLatitud());
        
        System.out.println(statement.toString());
        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los productos
    public List<Cliente> listarClientes() throws SQLException {

        List<Cliente> listaClientes = new ArrayList<Cliente>();
        String sql = "SELECT * FROM cliente";
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
            String telefono = resulSet.getString("telefono");
            String fecha_nacimiento = resulSet.getString("fecha_nacimiento");
            String domicilio = resulSet.getString("domicilio");
            float longitud = resulSet.getFloat("longitud");
            float latitud = resulSet.getFloat("latitud");
            
            Cliente cliente = new Cliente(correo, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, telefono, fecha_nacimiento, domicilio, longitud, latitud);
            listaClientes.add(cliente);
        }
        conexionBD.desconectar();
        return listaClientes;
    }
    
    //Obtener por id
    public Cliente obtenerPorId(String correo) throws SQLException {
        Cliente cliente = null;

        String sql = "SELECT * FROM cliente WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            cliente = new Cliente(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"), res.getString("telefono"), res.getString("fecha_nacimiento"), res.getString("domicilio"), res.getFloat("longitud"), res.getFloat("latitud"));
        }
        res.close();
        conexionBD.desconectar();

        return cliente;
    }
    
    public Cliente obtenerPorCorreoContrasenia(String correo, String contrasenia) throws SQLException {
        Cliente cliente = null;

        String sql = "SELECT * FROM administrador WHERE correo=? AND contrasenia=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, correo);
        statement.setString(2, contrasenia);
        ResultSet res = statement.executeQuery();
        
        if (res.next()) {
            cliente = new Cliente(res.getString("correo"), res.getString("primer_nombre"), res.getString("segundo_nombre"), res.getString("apellido_paterno"), res.getString("apellido_materno"), res.getString("telefono"), res.getString("fecha_nacimiento"), res.getString("domicilio"), res.getFloat("longitud"), res.getFloat("latitud"));
            cliente.setContrasenia(res.getString("contrasenia"));
        }
        
        res.close();
        conexionBD.desconectar();

        return cliente;
    }
    
    //Actualizar
    public boolean actualizar(Cliente cliente, String correoViejo) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE cliente SET correo=?, telefono=?, primer_nombre=?, segundo_nombre=?, apellido_paterno=?, apellido_materno=?, fecha_nacimiento=?, domicilio=?, longitud=?, latitud=? WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cliente.getCorreo());
        statement.setString(2, cliente.getTelefono());
        statement.setString(3, cliente.getPrimer_nombre());
        statement.setString(4, cliente.getSegundo_nombre());
        statement.setString(5, cliente.getApellido_paterno());
        statement.setString(6, cliente.getApellido_materno());
        statement.setString(7, cliente.getFecha_nacimiento());
        statement.setString(8, cliente.getDomicilio());
        statement.setFloat(9, cliente.getLongitud());
        statement.setFloat(10, cliente.getLatitud());
        statement.setString(11, correoViejo);
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //Actualizar
    public boolean actualizarContrasenia(String contrasenia, String correo) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE cliente SET contrasenia=PASSWORD(?) WHERE correo=?";
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
    public boolean eliminar(Cliente cliente) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM cliente WHERE correo=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, cliente.getCorreo());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}
