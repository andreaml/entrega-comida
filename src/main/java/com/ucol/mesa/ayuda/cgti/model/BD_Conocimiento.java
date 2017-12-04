package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class BD_Conocimiento {
    private int id;
    private int reporte;
    private int ticket;
    
    public BD_Conocimiento(int id, int reporte, int ticket){
        this.id=id;
        this.reporte=reporte;
        this.ticket=ticket;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReporte() {
        return reporte;
    }

    public void setReporte(int reporte) {
        this.reporte = reporte;
    }

    public int getTicket() {
        return ticket;
    }
    
    public void setTicket(int ticket) {
        this.ticket = ticket;
    }
}
