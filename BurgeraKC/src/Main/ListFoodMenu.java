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
public class ListFoodMenu {
    private String jenis, id, nama;
    private int harga;
    public ListFoodMenu(String jenis, String id, String nama, int harga){
        this.jenis=jenis;
        this.id=id;
        this.nama=nama;
        this.harga=harga;
    }
    public String getJenis(){
        return jenis;
    }
    public String getId(){
        return id;
    }
    public String getNama(){
        return nama;
    }
    public int getHarga(){
        return harga;
    }
}
