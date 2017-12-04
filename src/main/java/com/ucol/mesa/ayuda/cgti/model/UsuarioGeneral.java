package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class UsuarioGeneral {
    private String correo;
    private String nombre1;
    private String nombre2;
    private String apellidoP;
    private String apellidoM;

    public UsuarioGeneral(){}
    
    public UsuarioGeneral(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM){
        this.correo=correo;
        this.nombre1=nombre1;
        this.nombre2=nombre2;
        this.apellidoP=apellidoP;
        this.apellidoM=apellidoM;
    }
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }
}
