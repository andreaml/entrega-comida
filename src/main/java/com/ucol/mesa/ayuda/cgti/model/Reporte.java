package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
import java.time.LocalDate;
import java.time.LocalTime;

public class Reporte {
    private int id_reporte;
    private LocalDate fecha;
    private LocalTime hora;
    private int numUsuarios;
    private int numEspecialistas;
    private int numTicketsAsignados;
    private int numTicketsSinAsignar;
    private int numTicketsAtendiendo;
    private int numTicketsCerrados;
    private int numTicketsCalendarizados;
    private int numTicketsSolucionados;
    private int numCasosSatisfechos;
    private int numCasosInsatisfechos;
    
    public Reporte(int id_reporte, LocalDate fecha, LocalTime hora, int numUsuarios,
            int numEspecialistas, int numTicketsAsignados, int numTicketsSinAsignar,
            int numTicketsAtendiendo, int numTicketsCerrados, int numTicketsCalendarizados,
            int numTicketsSolucionados, int numCasosSatisfechos, int numCasosInsatisfechos){
        this.id_reporte=id_reporte;
        this.fecha=fecha;
        this.hora=hora;
        this.numUsuarios=numUsuarios;
        this.numEspecialistas=numEspecialistas;
        this.numTicketsAsignados=numTicketsAsignados;
        this.numTicketsSinAsignar=numTicketsSinAsignar;
        this.numTicketsAtendiendo=numTicketsAtendiendo;
        this.numTicketsCerrados=numTicketsCerrados;
        this.numTicketsCalendarizados=numTicketsCalendarizados;
        this.numTicketsSolucionados=numTicketsSolucionados;
        this.numCasosSatisfechos=numCasosSatisfechos;
        this.numCasosInsatisfechos=numCasosInsatisfechos;
    }

    public int getId_reporte() {
        return id_reporte;
    }

    public void setId_reporte(int id_reporte) {
        this.id_reporte = id_reporte;
    }
    
    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public LocalTime getHora() {
        return hora;
    }

    public void setHora(LocalTime hora) {
        this.hora = hora;
    }

    public int getNumUsuarios() {
        return numUsuarios;
    }

    public void setNumUsuarios(int numUsuarios) {
        this.numUsuarios = numUsuarios;
    }

    public int getNumEspecialistas() {
        return numEspecialistas;
    }

    public void setNumEspecialistas(int numEspecialistas) {
        this.numEspecialistas = numEspecialistas;
    }

    public int getNumTicketsAsignados() {
        return numTicketsAsignados;
    }

    public void setNumTicketsAsignados(int numTicketsAsignados) {
        this.numTicketsAsignados = numTicketsAsignados;
    }

    public int getNumTicketsSinAsignar() {
        return numTicketsSinAsignar;
    }

    public void setNumTicketsSinAsignar(int numTicketsSinAsignar) {
        this.numTicketsSinAsignar = numTicketsSinAsignar;
    }

    public int getNumTicketsAtendiendo() {
        return numTicketsAtendiendo;
    }

    public void setNumTicketsAtendiendo(int numTicketsAtendiendo) {
        this.numTicketsAtendiendo = numTicketsAtendiendo;
    }

    public int getNumTicketsCerrados() {
        return numTicketsCerrados;
    }

    public void setNumTicketsCerrados(int numTicketsCerrados) {
        this.numTicketsCerrados = numTicketsCerrados;
    }

    public int getNumTicketsCalendarizados() {
        return numTicketsCalendarizados;
    }

    public void setNumTicketsCalendarizados(int numTicketsCalendarizados) {
        this.numTicketsCalendarizados = numTicketsCalendarizados;
    }

    public int getNumTicketsSolucionados() {
        return numTicketsSolucionados;
    }

    public void setNumTicketsSolucionados(int numTicketsSolucionados) {
        this.numTicketsSolucionados = numTicketsSolucionados;
    }

    public int getNumCasosSatisfechos() {
        return numCasosSatisfechos;
    }

    public void setNumCasosSatisfechos(int numCasosSatisfechos) {
        this.numCasosSatisfechos = numCasosSatisfechos;
    }

    public int getNumCasosInsatisfechos() {
        return numCasosInsatisfechos;
    }

    public void setNumCasosInsatisfechos(int numCasosInsatisfechos) {
        this.numCasosInsatisfechos = numCasosInsatisfechos;
    }
}
