package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Cliente;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Pedido;

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
public class PedidoDAO {
    private final ConexionBD conexionBD;
    private Connection connection;
    private ClienteDAO clienteDAO;

    public PedidoDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        clienteDAO = new ClienteDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar nombreUsuario
    public boolean insertar(Pedido pedido) throws SQLException {
        String sql = "INSERT INTO pedido(cliente,fecha,hora,costo_total,estado_pedido) VALUES (?,?,?,?,?)";
        System.out.println(pedido.getCliente());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, pedido.getCliente());
        statement.setString(2, pedido.getFecha());
        statement.setString(3, pedido.getHora());
        statement.setFloat(4, pedido.getCosto_total());
        statement.setString(5, pedido.getEstado_pedido());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los usuarios
    public List<Pedido> listarPedidos() throws SQLException {

        List<Pedido> listaPedidos = new ArrayList<>();
        String sql = "SELECT * FROM pedido";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id_pedido = resulSet.getInt("id_pedido");
            Cliente cliente = clienteDAO.obtenerPorId(resulSet.getString("cliente"));
            String fecha = resulSet.getString("fecha");
            String hora = resulSet.getString("hora");
            float costo_total = resulSet.getInt("costo_total");
            String estado_pedido = resulSet.getString("estado_pedido");

            Pedido pedido = new Pedido(id_pedido,cliente,fecha,hora,costo_total,estado_pedido);
            
            listaPedidos.add(pedido);
        }
        resulSet.close();
        statement.close();
        conexionBD.desconectar();
        return listaPedidos;
    }
    
    //Obtener por id
    public Pedido obtenerPorId(int id_pedido) throws SQLException {
        Pedido pedido = null;

        String sql = "SELECT * FROM pedido WHERE id_pedido=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_pedido);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Cliente cliente = clienteDAO.obtenerPorId(res.getString("cliente"));
            pedido = new Pedido(res.getInt("id_pedido"), cliente, res.getString("fecha"), res.getString("hora"), res.getInt("costo_total"), res.getString("estado_pedido"));
        }
        res.close();
        statement.close();
        conexionBD.desconectar();

        return pedido;
    }
    
    //Actualizar
    public boolean actualizar(Pedido pedido) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE pedido SET cliente=?,fecha=?,hora=?,costo_total=?,estado_pedido=? WHERE id_pedido=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, pedido.getCliente());
        statement.setString(2, pedido.getFecha());
        statement.setString(3, pedido.getHora());
        statement.setFloat(4, pedido.getCosto_total());
        statement.setString(5, pedido.getEstado_pedido());
        statement.setInt(6, pedido.getId_pedido());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //eliminar
    public boolean eliminar(Pedido pedido) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM pedido WHERE id_pedido=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, pedido.getId_pedido());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}