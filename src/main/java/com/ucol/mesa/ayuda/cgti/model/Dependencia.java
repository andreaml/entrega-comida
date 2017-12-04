package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Dependencia {
    private int id_dependencia;
    private String campus;
    private String nombreDependencia;
    private String direccion;

    public Dependencia(String campus, String nombreDependencia, String direccion){
        this.direccion=direccion;
        this.campus=campus;
        this.nombreDependencia= nombreDependencia;
    }
    
    public int getId_dependencia() {
        return id_dependencia;
    }

    public void setId_dependencia(int id_dependencia) {
        this.id_dependencia = id_dependencia;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getNombreDependencia() {
        return nombreDependencia;
    }

    public void setNombreDependencia(String nombreDependencia) {
        this.nombreDependencia = nombreDependencia;
    }

     public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String calle, int numero, String colonia, String codPostal, String ciudad) {
        this.direccion = calle + ","+numero+","+colonia+","+codPostal+","+ciudad;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
}
