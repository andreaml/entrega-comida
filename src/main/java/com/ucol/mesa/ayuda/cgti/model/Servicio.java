package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Servicio {
    private int id_servicio;
    private String nombreServicio;
    private String especialistaString;
    private Especialista especialista;
    private String id_vehiculo;
    private Vehiculo vehiculo;
    private int nivelGasolinaInicio;
    private int nivelGasolinaFin;
    private String fecha;
    private String hora;
    
    
    public Servicio(){}
    
    public Servicio(String nombreServicio, String especialista, String id_vehiculo, int nivelGasolinaInicio, String fecha, String hora){
        this.nombreServicio=nombreServicio;
        this.especialistaString=especialista;
        this.id_vehiculo=id_vehiculo;
        this.nivelGasolinaInicio=nivelGasolinaInicio;   
        this.fecha=fecha;
        this.hora=hora;
    }
    
    public Servicio(int id_servicio, String nombreServicio, Especialista especialista, Vehiculo vehiculo, int nivelGasolinaInicio, String fecha, String hora){
        this.id_servicio=id_servicio; 
        this.nombreServicio=nombreServicio;
        this.especialista=especialista;
        this.vehiculo=vehiculo;
        this.nivelGasolinaInicio=nivelGasolinaInicio; 
        this.fecha=fecha;
        this.hora=hora;
    }
    
    public Servicio(int id_servicio, String nombreServicio, String especialista, String id_vehiculo, int nivelGasolinaInicio, int nivelGasolinaFin, String fecha, String hora){
        this.id_servicio=id_servicio; 
        this.nombreServicio=nombreServicio;
        this.especialistaString=especialista;
        this.id_vehiculo=id_vehiculo;
        this.nivelGasolinaInicio=nivelGasolinaInicio;
        this.nivelGasolinaFin=nivelGasolinaFin;
        this.fecha=fecha;
        this.hora=hora;
    }
    
    public Servicio(int id_servicio, String nombreServicio, Especialista especialista, String id_vehiculo, int nivelGasolinaInicio, int nivelGasolinaFin, String fecha, String hora){
        this.id_servicio=id_servicio; 
        this.nombreServicio=nombreServicio;
        this.especialista=especialista;
        this.id_vehiculo=id_vehiculo;
        this.nivelGasolinaInicio=nivelGasolinaInicio;
        this.nivelGasolinaFin=nivelGasolinaFin;
        this.fecha=fecha;
        this.hora=hora;
    }

    public int getId_servicio() {
        return id_servicio;
    }

    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
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

    public void setEspecialistaString(Especialista especialista) {
        this.especialista = especialista;
    }

    public String getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(String vehiculo) {
        this.id_vehiculo = vehiculo;
    }

    public Vehiculo getVehiculo() {
        return vehiculo;
    }

    public void setVehiculo(Vehiculo vehiculo) {
        this.vehiculo = vehiculo;
    }
    
    public int getNivelGasolinaInicio() {
        return nivelGasolinaInicio;
    }

    public void setNivelGasolinaInicio(int nivelGasolinaInicio) {
        this.nivelGasolinaInicio = nivelGasolinaInicio;
    }

    public int getNivelGasolinaFin() {
        return nivelGasolinaFin;
    }

    public void setNivelGasolinaFin(int nivelGasolinaFin) {
        this.nivelGasolinaFin = nivelGasolinaFin;
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
    
    
}
