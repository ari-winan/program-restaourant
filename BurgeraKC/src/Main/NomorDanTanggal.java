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
public class NomorDanTanggal {
    private String nomorPesanan, tanggal;
    public NomorDanTanggal(String nomorPesanan,String tanggal){
        this.nomorPesanan = nomorPesanan;
        this.tanggal = tanggal;
    }
    public String getNomorPesanan(){
        return nomorPesanan;
    }
    public String getTanggal(){
        return tanggal;
    }
}
