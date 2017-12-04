package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Usuario extends UsuarioGeneral {
    private int dependenciaInt;
    private Dependencia dependencia;
    private int numCuenta;
    private String tipo;

    public Usuario(){
        super();
    }
    
    public Usuario(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, int dependencia, int numCuenta, String tipo){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.dependenciaInt=dependencia;
        this.numCuenta=numCuenta;
        this.tipo=tipo;
    }
    
    public Usuario(String correo, String nombre1, String nombre2, String apellidoP, String apellidoM, Dependencia dependencia, int numCuenta, String tipo){
        super(correo, nombre1, nombre2, apellidoP, apellidoM);
        this.dependencia=dependencia;
        this.numCuenta=numCuenta;
        this.tipo=tipo;
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
    
    public int getNumCuenta() {
        return numCuenta;
    }

    public void setNumCuenta(int numCuenta) {
        this.numCuenta = numCuenta;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
