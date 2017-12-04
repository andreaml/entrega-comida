package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class TipoServicio {
    private int id_tipo_servicio;
    private String nombreTipoServicio;
    private int areaInt;
    private Area area;
    
    public TipoServicio(String nombreTipoServicio, int area){
        this.nombreTipoServicio=nombreTipoServicio;
        this.areaInt=area;
    }

    public TipoServicio(int id_tipo_servicio, String nombreTipoServicio, int area){
        this.id_tipo_servicio= id_tipo_servicio;
        this.nombreTipoServicio=nombreTipoServicio;
        this.areaInt=area;
    }
    
     public TipoServicio(int id_tipo_servicio, String nombreTipoServicio, Area area){
        this.id_tipo_servicio= id_tipo_servicio;
        this.nombreTipoServicio=nombreTipoServicio;
        this.area=area;
    }
   
    public int getId_tipo_servicio() {
        return id_tipo_servicio;
    }

    public void setId_tipo_servicio(int id_tipo_servicio) {
        this.id_tipo_servicio = id_tipo_servicio;
    }

    public String getNombreTipoServicio() {
        return nombreTipoServicio;
    }

    public void setNombreTipoServicio(String nombreTipoServicio) {
        this.nombreTipoServicio = nombreTipoServicio;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }
    
    public int getAreaInt() {
        return areaInt;
    }

    public void setAreaInt(int area) {
        this.areaInt = area;
    }
}
