package com.ucol.mesa.ayuda.cgti.model;

/**
 * @author 20126225
 */
public class PlatillosPedidos {
    private int id_platillos_pedidos;
    private int id_platillo;
    private int cantidad_platillo;
    private int num_pedido;
    private float subtotal;
    
    
    public PlatillosPedidos(int id_platillos_pedidos, int id_platillo, int cantidad_platillo, int num_pedido,float subtotal){
        this.id_platillos_pedidos=id_platillos_pedidos;
        this.id_platillo=id_platillo;
        this.cantidad_platillo=cantidad_platillo;
        this.num_pedido=num_pedido;
        this.subtotal=subtotal;
    }

    public int getId_platillos_pedidos() {
        return id_platillos_pedidos;
    }

    public void setId_platillos_pedidos(int id_platillos_pedidos) {
        this.id_platillos_pedidos = id_platillos_pedidos;
    }

    public int getId_platillo() {
        return id_platillo;
    }

    public void setId_platillo(int id_platillo) {
        this.id_platillo = id_platillo;
    }

    public int getCantidad_platillo() {
        return cantidad_platillo;
    }

    public void setCantidad_platillo(int cantidad_platillo) {
        this.cantidad_platillo = cantidad_platillo;
    }

    public int getNum_pedido() {
        return num_pedido;
    }

    public void setNum_pedido(int num_pedido) {
        this.num_pedido = num_pedido;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }
    
}
