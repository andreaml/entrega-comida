package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class AtnUsuarios extends UsuarioGeneral {
    private int dependenciaInt;
    private Dependencia dependencia;
    private int numTrabajador;
    private String contrasenia;
  
    public AtnUsuarios(){
        super();
    }
    
    public AtnUsuarios(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, int dependencia, int numTrabajador){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.dependenciaInt=dependencia;
        this.numTrabajador=numTrabajador;
    }
    
    public AtnUsuarios(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, Dependencia dependencia, int numTrabajador){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.dependencia=dependencia;
        this.numTrabajador=numTrabajador;
    }
      
    public Dependencia getDependencia() {
        return dependencia;
    }

    public void setDependencia(Dependencia dependencia) {
        this.dependencia = dependencia;
    }

    public int getDependenciaInt() {
        return dependenciaInt;
    }

    public void setDependenciaInt(int dependenciaInt) {
        this.dependenciaInt = dependenciaInt;
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
}
