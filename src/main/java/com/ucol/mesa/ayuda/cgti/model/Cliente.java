package com.ucol.mesa.ayuda.cgti.model;


/**
 * @author 20126225
 */
public class Cliente extends UsuarioGeneral{
    private String telefono;
    private String contrasenia;
    private String fecha_nacimiento;
    private String domicilio;
    private float longitud;
    private float latitud;

    
    public Cliente(String correo, String primer_nombre,String segundo_nombre, String apellido_paterno, String apellido_materno, String telefono, String fecha_nacimiento, String domicilio, float longitud, float latitud){
        super(correo, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno);
        this.telefono=telefono;
        this.fecha_nacimiento=fecha_nacimiento;
        this.domicilio=domicilio;
        this.longitud=longitud;
        this.latitud=latitud;
    }
    
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public float getLongitud() {
        return longitud;
    }

    public void setLongitud(float longitud) {
        this.longitud = longitud;
    }

    public float getLatitud() {
        return latitud;
    }

    public void setLatitud(float latitud) {
        this.latitud = latitud;
    }
}
