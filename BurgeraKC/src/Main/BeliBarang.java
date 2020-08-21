/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

/**
 *
 * @author Rudy Rachman
 */
public class BeliBarang {
    private String barang;
    private int harga, index;
    public BeliBarang(String barang, int harga, int index){
        this.barang=barang;
        this.harga=harga;
        this.index=index;
    }
    public String getBarang(){
        return barang;
    }
    public int getHarga(){
        return harga;
    }
    public int getIndex(){
        return index;
    }
}
