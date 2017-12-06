package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Administrador extends UsuarioGeneral {
   
    private String contrasenia;
    
    public Administrador(){
        super();
    }
    
    public Administrador(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
    }
      
    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }    
}
