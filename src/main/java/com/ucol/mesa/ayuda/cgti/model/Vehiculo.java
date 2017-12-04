package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Vehiculo {
    private String id_vehiculo;
    private String modelo;
    private int anio;
    private String estado;
    private int dependenciaInt;
    private Dependencia dependencia;
    private String marca;
    private int nivelGasolina;

    public Vehiculo(String id_vehiculo, String modelo, int anio, String estado, int dependencia, String marca, int nivelGasolina){
        this.id_vehiculo=id_vehiculo;
        this.modelo=modelo;
        this.anio=anio;
        this.estado=estado;
        this.dependenciaInt=dependencia;
        this.marca=marca;
        this.nivelGasolina=nivelGasolina;
    }
     public Vehiculo(String id_vehiculo, String modelo, int anio, String estado, Dependencia dependencia, String marca, int nivelGasolina){
        this.id_vehiculo=id_vehiculo;
        this.modelo=modelo;
        this.anio=anio;
        this.estado=estado;
        this.dependencia=dependencia;
        this.marca=marca;
        this.nivelGasolina=nivelGasolina;
    }
    
    public String getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(String id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getDependenciaInt() {
        return dependenciaInt;
    }

    public void setDependenciaInt(int dependencia) {
        this.dependenciaInt = dependencia;
    }
    
    public Dependencia getDependencia() {
        return dependencia;
    }

    public void setDependencia(Dependencia dependencia) {
        this.dependencia = dependencia;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getNivelGasolina() {
        return nivelGasolina;
    }

    public void setNivelGasolina(int nivelGasolina) {
        this.nivelGasolina = nivelGasolina;
    }
}
