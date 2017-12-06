package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class Pedido {
    private int id_pedido;
    private String cliente;
    private String fecha;
    private String hora;
    private float costo_total;
    private String estado_pedido;
    private Cliente clienteObj;
    
    public Pedido(String cliente, String fecha, String hora, float costo_total, String estado_pedido){
        this.cliente = cliente;
        this.fecha = fecha;
        this.hora = hora;
        this.costo_total = costo_total;
        this.estado_pedido = estado_pedido;
    }

    public Pedido(int id_pedido, Cliente cliente, String fecha, String hora, float costo_total, String estado_pedido){
        this.id_pedido = id_pedido;
        this.clienteObj = cliente;
        this.fecha = fecha;
        this.hora = hora;
        this.costo_total = costo_total;
        this.estado_pedido = estado_pedido;
    }
    
    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public float getCosto_total() {
        return costo_total;
    }

    public void setCosto_total(float costo_total) {
        this.costo_total = costo_total;
    }

    public String getEstado_pedido() {
        return estado_pedido;
    }

    public void setEstado_pedido(String estado_pedido) {
        this.estado_pedido = estado_pedido;
    }

    
}
