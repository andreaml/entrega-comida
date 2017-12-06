package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Administrador extends UsuarioGeneral {
   
    private String contrasenia;
    
    public Administrador(){
        super();
    }
    
    public Administrador(String correo, String primer_nombre, String segundo_nombre, String apellido_paterno, String apellido_materno){
        super(correo, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno);
    }
      
    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }    
}
