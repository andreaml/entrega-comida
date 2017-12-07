package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Platillo;
import com.ucol.mesa.ayuda.cgti.model.PlatillosPedidos;

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
public class PlatillosPedidosDAO {
    private final ConexionBD conexionBD;
    private Connection connection;
    private PlatilloDAO platilloDAO;

    public PlatillosPedidosDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        platilloDAO = new PlatilloDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }

    //Agregar nombreUsuario
    public boolean insertar(PlatillosPedidos platillos_pedidos) throws SQLException {
        String sql = "INSERT INTO platillos_pedidos(id_platillo,cantidad_platillo,num_pedido,subtotal) VALUES (?,?,?,?,?)";
        System.out.println(platillos_pedidos.getNum_pedido());
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, platillos_pedidos.getId_platillo());
        statement.setInt(2, platillos_pedidos.getCantidad_platillo());
        statement.setInt(3, platillos_pedidos.getNum_pedido());
        statement.setFloat(4, platillos_pedidos.getSubtotal());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    // listar todos los usuarios
    public List<PlatillosPedidos> listarPlatillosPedidos() throws SQLException {

        List<PlatillosPedidos> listaPlatillosPedidos = new ArrayList<>();
        String sql = "SELECT * FROM platillos_pedidos";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id_platillos_pedidos = resulSet.getInt("id_platillos_pedidos");
            Platillo platillo = platilloDAO.obtenerPorId(resulSet.getInt("id_platillo"));
            int cantidad_platillo = resulSet.getInt("cantidad_platillo");
            int num_pedido = resulSet.getInt("num_pedido");
            int subtotal = resulSet.getInt("subtotal");
            

            PlatillosPedidos platillo_pedido = new PlatillosPedidos(id_platillos_pedidos, platillo, cantidad_platillo, num_pedido, subtotal);
            
            listaPlatillosPedidos.add(platillo_pedido);
        }
        resulSet.close();
        statement.close();
        conexionBD.desconectar();
        return listaPlatillosPedidos;
    }
    
    //Obtener por id
    public List<PlatillosPedidos> obtenerPorPedidoId(int id_pedido) throws SQLException {
        List<PlatillosPedidos> listaPlatillosPedidos = new ArrayList<>();

        String sql = "SELECT * FROM platillos_pedidos WHERE num_pedido=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_pedido);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            Platillo platillo = platilloDAO.obtenerPorId(res.getInt("id_platillo"));
            PlatillosPedidos platillos_pedidos = new PlatillosPedidos(res.getInt("id_platillos_pedidos"), platillo, res.getInt("cantidad_platillo"), res.getInt("num_pedido"), res.getFloat("subtotal"));
            listaPlatillosPedidos.add(platillos_pedidos);
        }
        res.close();
        statement.close();
        conexionBD.desconectar();

        return listaPlatillosPedidos;
    }
    
    //Actualizar
    public boolean actualizar(PlatillosPedidos platillos_pedidos) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE platillos_pedidos SET id_platillo=?,cantidad_platillo=?,num_pedido=?,subtotal=? WHERE id_platillos_pedidos=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, platillos_pedidos.getId_platillo());
        statement.setInt(2, platillos_pedidos.getCantidad_platillo());
        statement.setInt(3, platillos_pedidos.getNum_pedido());
        statement.setFloat(4, platillos_pedidos.getSubtotal());
        statement.setFloat(4, platillos_pedidos.getId_platillos_pedidos());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    
    //eliminar
    public boolean eliminarPorPedidos(int id_pedido) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM platillos_pedidos WHERE num_pedido=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_pedido);

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}