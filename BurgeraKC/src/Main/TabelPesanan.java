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
public class TabelPesanan {
    private String nama, addon, id;
    private int satuan, harga, indeks;
    public String getNama(){
        return nama;
    }
    public String getAddon(){
        return addon;
    }
    public String getId(){
        return id;
    }
    public int getSatuan(){
        return satuan;
    }
    public int getHarga(){
        return harga;
    }
    public int getIndeks(){
        return indeks;
    }
    public TabelPesanan(String nama, String addon, String id, int harga, int satuan, int indeks){
        this.nama = nama;
        this.addon = addon;
        this.id = id;
        this.harga = harga;
        this.satuan = satuan;
        this.indeks = indeks;
    }
}
