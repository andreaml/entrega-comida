package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Especialista extends UsuarioGeneral{
    private int areaInt;
    private Area areaArea;
    private int numTrabajador;
    private String contrasenia;
    private String profesion;
    
    public Especialista(){
        super();
    }
    
    public Especialista(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, int area, int numTrabajador, String profesion){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.areaInt=area;
        this.numTrabajador=numTrabajador;
        this.profesion=profesion;
    }
    
    public Especialista(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, Area area, int numTrabajador, String profesion){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.areaArea=area;
        this.numTrabajador=numTrabajador;
        this.profesion=profesion;
    }
    
    public int getAreaInt() {
        return areaInt;
    }

    public void setAreaInt(int area) {
        this.areaInt = area;
    }
    
    public Area getAreaArea() {
        return areaArea;
    }

    public void setAreaArea(Area area) {
        this.areaArea = area;
    }

    public int getNumTrabajador() {
        return numTrabajador;
    }

    public void setNumTrabajador(int numTrabajador) {
        this.numTrabajador = numTrabajador;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }
}
