package com.ucol.mesa.ayuda.cgti.model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 20126225
 */
public class Area {
    private int id_area;
    private String nombreArea;
    private int dependenciaInt;
    private Dependencia dependencia;
    List<TipoServicio> listaTiposServicio = new ArrayList<TipoServicio>();
      
    public Area(int id_area, String nombreArea, int dependencia){
        this.id_area=id_area;
        this.nombreArea=nombreArea;
        this.dependenciaInt=dependencia;
    }
    
    public Area(int id_area, String nombreArea, Dependencia dependencia){
        this.id_area=id_area;
        this.nombreArea=nombreArea;
        this.dependencia=dependencia;
    }
    
    public Area(int id_area, String nombreArea, Dependencia dependencia, List<TipoServicio> listaTiposServicio){
        this.id_area=id_area;
        this.nombreArea=nombreArea;
        this.dependencia=dependencia;
        this.listaTiposServicio = listaTiposServicio;
    }
    
    public Area(String nombreArea, int dependencia){
        this.nombreArea=nombreArea;
        this.dependenciaInt=dependencia;
    }
    
    public Area(String nombreArea, Dependencia dependencia){
        this.nombreArea=nombreArea;
        this.dependencia=dependencia;
    }

    public int getId_area() {
        return id_area;
    }

    public void setId_area(int id_area) {
        this.id_area = id_area;
    }

    public String getNombreArea() {
        return nombreArea;
    }

    public void setNombreArea(String nombreArea) {
        this.nombreArea = nombreArea;
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
}
