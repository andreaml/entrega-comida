package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class UsuarioGeneral {
    private String correo;
    private String primer_nombre;
    private String segundo_nombre;
    private String apellido_paterno;
    private String apellido_materno;


    public UsuarioGeneral(){}
    
    public UsuarioGeneral(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM){
        this.correo=correo;
        this.primer_nombre=nombre1;
        this.segundo_nombre=nombre2;
        this.apellido_paterno=apellidoP;
        this.apellido_materno=apellidoM;
    }
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPrimer_nombre() {
        return primer_nombre;
    }

    public void setPrimer_nombre(String primer_nombre) {
        this.primer_nombre = primer_nombre;
    }

    public String getSegundo_nombre() {
        return segundo_nombre;
    }

    public void setSegundo_nombre(String segundo_nombre) {
        this.segundo_nombre = segundo_nombre;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

}
