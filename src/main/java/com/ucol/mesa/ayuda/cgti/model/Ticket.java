package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */

import java.time.LocalDate;
import java.time.LocalTime;

public class Ticket {
    private int id_ticket;
    private String titulo;
    private String descripcion;
    private int tipoServicioInt;
    private TipoServicio tipoServicio;
    private String emisorString;
    private Usuario emisor;
    private String especialistaString;
    private Especialista especialista;
    private String fecha;
    private String hora;
    private int servicioInt;
    private Servicio servicio;
    
    private String comentarios;
    private int estadoSatisfaccion;
    private int estadoTicket;
    
    public Ticket(String titulo, String descripcion, int tipoServicio,
            String emisor, String fecha, String hora, int estadoTicket){
        this.titulo= titulo;
        this.descripcion= descripcion;
        this.tipoServicioInt= tipoServicio;
        this.emisorString= emisor;
        this.fecha= fecha;
        this.hora= hora;
        this.estadoTicket= estadoTicket;
    }
    
    public Ticket(String titulo, String descripcion, int tipoServicio,
            String emisor,int estadoTicket){
        this.titulo= titulo;
        this.descripcion= descripcion;
        this.tipoServicioInt= tipoServicio;
        this.emisorString= emisor;
        this.estadoTicket= estadoTicket;
    }
    
    public Ticket(String titulo, String descripcion, TipoServicio tipoServicio,
            Usuario emisor, String fecha, String hora, int estadoTicket){
        this.titulo= titulo;
        this.descripcion= descripcion;
        this.tipoServicio= tipoServicio;
        this.emisor= emisor;
        this.fecha= fecha;
        this.hora= hora;
        this.estadoTicket= estadoTicket;
    }
    
    public Ticket(String comentarios, int estadoSatisfaccion){
        this.comentarios= comentarios;
        this.estadoSatisfaccion= estadoSatisfaccion;
    }

    public int getId_ticket() {
        return id_ticket;
    }

    public void setId_ticket(int id_ticket) {
        this.id_ticket = id_ticket;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getTipoServicioInt() {
        return tipoServicioInt;
    }

    public void setTipoServicioInt(int tipoServicio) {
        this.tipoServicioInt = tipoServicio;
    }
    
    public TipoServicio getTipoServicio() {
        return tipoServicio;
    }
    
    public void setTipoServicio(TipoServicio tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public String getEmisorString() {
        return emisorString;
    }

    public void setEmisorString(String emisor) {
        this.emisorString = emisor;
    }
    
    public Usuario getEmisor() {
        return emisor;
    }
    
    public void setEmisor(Usuario emisor) {
        this.emisor = emisor;
    }

    public String getEspecialistaString() {
        return especialistaString;
    }

    public void setEspecialistaString(String especialista) {
        this.especialistaString = especialista;
    }
    
        public Especialista getEspecialista() {
        return especialista;
    }
    
    public void setEspecialista(Especialista especialista) {
        this.especialista = especialista;
    }
    
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getServicioInt() {
        return servicioInt;
    }

    public void setServicioInt(int servicio) {
        this.servicioInt = servicio;
    }
    
    public Servicio getServicio() {
        return servicio;
    }
    
    public void setServicio(Servicio servicio) {
        this.servicio = servicio;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    public int getEstadoSatisfaccion() {
        return estadoSatisfaccion;
    }

    public void setEstadoSatisfaccion(int estadoSatisfaccion) {
        this.estadoSatisfaccion = estadoSatisfaccion;
    }

    public int getEstadoTicket() {
        return estadoTicket;
    }

    public void setEstadoTicket(int estadoTicket) {
        this.estadoTicket = estadoTicket;
    }                
}
