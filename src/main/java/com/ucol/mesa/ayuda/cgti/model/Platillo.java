package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Platillo {
    private int id_platillo;
    private String nombre_platillo;
    private int porcion;
    private String descripcion;
    private int num_dia;
    private float costo;
    private String id_administrador;

    public Platillo(int id_platillo, String nombre_platillo, int porcion, String descripcion, int num_dia, float costo, String id_administrador){
        this.id_platillo=id_platillo;
        this.nombre_platillo=nombre_platillo;
        this.porcion= porcion;
        this.descripcion= descripcion;
        this.num_dia= num_dia;
        this.costo= costo;
        this.id_administrador= id_administrador;
    }

    public int getId_platillo() {
        return id_platillo;
    }

    public void setId_platillo(int id_platillo) {
        this.id_platillo = id_platillo;
    }

    public String getNombre_platillo() {
        return nombre_platillo;
    }

    public void setNombre_platillo(String nombre_platillo) {
        this.nombre_platillo = nombre_platillo;
    }

    public int getPorcion() {
        return porcion;
    }

    public void setPorcion(int porcion) {
        this.porcion = porcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getNum_dia() {
        return num_dia;
    }

    public void setNum_dia(int num_dia) {
        this.num_dia = num_dia;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public String getId_administrador() {
        return id_administrador;
    }

    public void setId_administrador(String id_administrador) {
        this.id_administrador = id_administrador;
    }
    
    
    
}
