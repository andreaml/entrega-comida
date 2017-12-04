package com.ucol.mesa.ayuda.cgti.dao;
import com.ucol.mesa.ayuda.cgti.model.Ticket;
import com.ucol.mesa.ayuda.cgti.model.ConexionBD;
import com.ucol.mesa.ayuda.cgti.model.Especialista;
import com.ucol.mesa.ayuda.cgti.model.Servicio;
import com.ucol.mesa.ayuda.cgti.model.TipoServicio;
import com.ucol.mesa.ayuda.cgti.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;


/**
 * @author ASUS
 */
public class TicketDAO {
    private ConexionBD conexionBD;
    private Connection connection;
    private EspecialistaDAO especialistaDAO;
    private ServicioDAO servicioDAO;
    private TipoServicioDAO tipoServicioDAO;
    private UsuarioDAO usuarioDAO;

    public TicketDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        System.out.println(jdbcURL);
        conexionBD = new ConexionBD(jdbcURL, jdbcUsername, jdbcPassword);
        especialistaDAO = new EspecialistaDAO(jdbcURL, jdbcUsername, jdbcPassword);
        servicioDAO = new ServicioDAO(jdbcURL, jdbcUsername, jdbcPassword);
        tipoServicioDAO = new TipoServicioDAO(jdbcURL, jdbcUsername, jdbcPassword);
        usuarioDAO = new UsuarioDAO(jdbcURL, jdbcUsername, jdbcPassword);
    }
    
    //Agregar nombreUsuario
    public boolean insertar(Ticket ticket) throws SQLException {
        String sql;
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement;
        boolean rowInserted = false;
        if (ticket.getEspecialistaString() != "") {
            sql = "INSERT INTO TICKETS(titulo, descripcion, tipo_servicio, emisor, fecha, hora, estado_ticket, especialista) VALUES (?,?,?,?,?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, ticket.getTitulo());
            statement.setString(2, ticket.getDescripcion());
            statement.setInt(3, ticket.getTipoServicioInt());
            statement.setString(4, ticket.getEmisorString());
            statement.setString(5, ticket.getFecha());
            statement.setString(6, ticket.getHora());
            statement.setInt(7, ticket.getEstadoTicket());
            statement.setString(8, ticket.getEspecialistaString());
            rowInserted = statement.executeUpdate() > 0;
        } else {
            sql = "INSERT INTO TICKETS(titulo, descripcion, tipo_servicio, emisor, fecha, hora, estado_ticket) VALUES (?,?,?,?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, ticket.getTitulo());
            statement.setString(2, ticket.getDescripcion());
            statement.setInt(3, ticket.getTipoServicioInt());
            statement.setString(4, ticket.getEmisorString());
            statement.setString(5, ticket.getFecha());
            statement.setString(6, ticket.getHora());
            statement.setInt(7, ticket.getEstadoTicket());
            rowInserted = statement.executeUpdate() > 0;
        }
        statement.close();
        conexionBD.desconectar();
        return rowInserted;
    }
    
    //Obtener último id insertado
    public int obtenerUltimoIdInsertado(String fecha, String hora) throws SQLException {
        int ticketId = -1;

        String sql = "SELECT id_ticket FROM TICKETS WHERE fecha=? and hora=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, fecha);
        statement.setString(2, hora);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
           ticketId = res.getInt("id_ticket");
        }
        res.close();
        statement.close();
        conexionBD.desconectar();

        return ticketId;
    }
    
    
    // listar todos los productos
    public List<Ticket> listarTickets() throws SQLException {

        List<Ticket> listaTickets = new ArrayList<Ticket>();
        String sql = "SELECT * FROM TICKETS";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id_ticket = resulSet.getInt("id_ticket");
            String titulo = resulSet.getString("titulo");
            String descripcion = resulSet.getString("descripcion");
            Servicio servicio= servicioDAO.obtenerPorId(resulSet.getInt("servicio"));
            TipoServicio tipo_servicio=tipoServicioDAO.obtenerPorId(resulSet.getInt("tipo_servicio"));
            Usuario emisor = usuarioDAO.obtenerPorId(resulSet.getString("emisor"));
            String fecha = resulSet.getString("fecha");
            String hora = resulSet.getString("hora");
            String comentarios = resulSet.getString("comentario_atencion_usuario");
            int estado_satisfaccion = resulSet.getInt("estado_satisfaccion");
            int estado_ticket = resulSet.getInt("estado_ticket");
            Especialista especialista = especialistaDAO.obtenerPorId(resulSet.getString("especialista"));

            Ticket ticket = new Ticket(titulo, descripcion, tipo_servicio, emisor, fecha, hora, estado_ticket);
            ticket.setId_ticket(id_ticket);
            ticket.setServicio(servicio);
            ticket.setComentarios(comentarios);
            ticket.setEstadoSatisfaccion(estado_satisfaccion);
            ticket.setEspecialista(especialista);
            
            listaTickets.add(ticket);
        }
        conexionBD.desconectar();
        return listaTickets;
    }
    
        // listar todos los productos
    public List<Ticket> mostrarPorServicio(int id_servicio) throws SQLException {

        List<Ticket> listaTickets = new ArrayList<Ticket>();
        String sql = "SELECT * FROM TICKETS WHERE servicio=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_servicio);
        ResultSet resulSet = statement.executeQuery();

        while (resulSet.next()) {
            int id_ticket = resulSet.getInt("id_ticket");
            String titulo = resulSet.getString("titulo");
            String descripcion = resulSet.getString("descripcion");
            Servicio servicio= servicioDAO.obtenerPorId(resulSet.getInt("servicio"));
            TipoServicio tipo_servicio=tipoServicioDAO.obtenerPorId(resulSet.getInt("tipo_servicio"));
            Usuario emisor = usuarioDAO.obtenerPorId(resulSet.getString("emisor"));
            String fecha = resulSet.getString("fecha");
            String hora = resulSet.getString("hora");
            String comentarios = resulSet.getString("comentario_atencion_usuario");
            int estado_satisfaccion = resulSet.getInt("estado_satisfaccion");
            int estado_ticket = resulSet.getInt("estado_ticket");
            Especialista especialista = especialistaDAO.obtenerPorId(resulSet.getString("especialista"));

            Ticket ticket = new Ticket(titulo, descripcion, tipo_servicio, emisor, fecha, hora, estado_ticket);
            ticket.setId_ticket(id_ticket);

            ticket.setServicio(servicio);
            ticket.setComentarios(comentarios);
            ticket.setEstadoSatisfaccion(estado_satisfaccion);
            ticket.setEspecialista(especialista);
            listaTickets.add(ticket);
        }
        conexionBD.desconectar();
        return listaTickets;
    }
    
    //Obtener ticket por id
    public Ticket obtenerPorId(int id_ticket) throws SQLException {
        Ticket ticket = null;

        String sql = "SELECT * FROM TICKETS WHERE id_ticket=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id_ticket);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            
            //DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-mm-dd");
            //LocalDate fecha = LocalDate.parse(res.getString("fecha"), dtf);
            //DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
            //LocalTime hora = LocalTime.parse(res.getString("hora"),dtf2);
            
            Usuario usuario= usuarioDAO.obtenerPorId(res.getString("emisor"));
            TipoServicio tipoServicio=tipoServicioDAO.obtenerPorId(res.getInt("tipo_servicio"));
            ticket = new Ticket (res.getString("titulo"), res.getString("descripcion"),tipoServicio ,usuario, res.getString("fecha"), res.getString("hora"), res.getInt("estado_ticket"));
            ticket.setId_ticket(res.getInt("id_ticket"));
            Servicio servicio= servicioDAO.obtenerPorId(res.getInt("servicio"));
            ticket.setServicio(servicio);
            ticket.setComentarios(res.getString("comentario_especialista"));
            ticket.setEstadoSatisfaccion(res.getInt("estado_satisfaccion"));
            Especialista especialista= especialistaDAO.obtenerPorId(res.getString("especialista"));
            ticket.setEspecialista(especialista);
            
            
        }
        res.close();
        conexionBD.desconectar();

        return ticket;
    }
    
    //Actualizar
    public boolean actualizar(Ticket ticket) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE TICKETS SET titulo=?, descripcion=?, servicio=?, tipo_servicio=?, emisor=?, comentario_atencion_usuario=?, estado_satisfaccion=?, estado_ticket=?, especialista=? WHERE id_ticket=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        
        statement.setString(1, ticket.getTitulo());
        statement.setString(2, ticket.getDescripcion());
        if (ticket.getServicioInt() == 0) 
            statement.setInt(3, ticket.getServicioInt());
        else 
             statement.setNull(3, java.sql.Types.INTEGER);
        statement.setInt(4, ticket.getTipoServicioInt());
        statement.setString(5, ticket.getEmisorString());
        statement.setString(6, ticket.getComentarios());
        statement.setInt(7, ticket.getEstadoSatisfaccion());
        statement.setInt(8, ticket.getEstadoTicket());
        statement.setString(9, ticket.getEspecialistaString());
        statement.setInt(10, ticket.getId_ticket());
        
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    public boolean actualizarEva(Ticket eva) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE TICKETS SET comentario_usuario=?, estado_satisfaccion=? WHERE id_ticket=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, eva.getComentarios());
        statement.setInt(2, eva.getEstadoSatisfaccion());
        statement.setInt(3, eva.getId_ticket());
        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();
        return rowActualizar;
    }
    
    //Eliminar ticket
    public boolean eliminar(Ticket ticket) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM TICKETS WHERE id_ticket=?";
        conexionBD.conectar();
        connection = conexionBD.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, ticket.getId_ticket());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        conexionBD.desconectar();

        return rowEliminar;
    }
}