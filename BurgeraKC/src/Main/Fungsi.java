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

import java.awt.Color;
import javax.swing.JEditorPane;
import javax.swing.JButton;
import java.awt.event.KeyEvent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Fungsi {
    public void focus(JEditorPane kotak, String awal, String tujuan, int opsi){
        kotak.setTransferHandler(null);
        if(kotak.getText().equals(awal)){
            kotak.setText(tujuan);
            if(opsi==0) kotak.setForeground(Color.GRAY);
            else kotak.setForeground(Color.BLACK);
        }
    }
    
    public void pindah(JEditorPane awal, JEditorPane tujuan, KeyEvent evt){
        if(evt.getKeyCode()==KeyEvent.VK_ENTER||evt.getKeyCode()==KeyEvent.VK_TAB){
            if(awal.getText().equals("")) awal.requestFocus();
            else tujuan.requestFocus();
            evt.consume();
        }
    }public void pindah(JEditorPane awal, JButton tujuan, KeyEvent evt){
        if(evt.getKeyCode()==KeyEvent.VK_ENTER||evt.getKeyCode()==KeyEvent.VK_TAB){
            if(awal.getText().equals("")) awal.requestFocus();
            else tujuan.requestFocus();
            evt.consume();
        }
    }
    
    public void numberOnly(JEditorPane kotak, KeyEvent evt, int batas){
        char a = evt.getKeyChar();
        if(!Character.isDigit(a)) evt.consume();
        if(kotak.getText().length()==batas) evt.consume();
    }
    
    public void batal(int opsi, String nomorPesanan, JFrame x){
        ConnectDB con = new ConnectDB();
        String jenis;
        if(opsi==0) jenis="Pesanan";
        else jenis="Belanja";
        switch(JOptionPane.showConfirmDialog(null, "Apakah anda ingin membatalkan "+jenis+"?","KONFIRMASI!",JOptionPane.YES_NO_OPTION)){
            case JOptionPane.YES_OPTION:
                if(opsi==0) con.batalPesanan(opsi, nomorPesanan);
                else con.batalPesanan(opsi, nomorPesanan);
                Menu menu = new Menu();
                menu.setVisible(true);
                x.dispose();
                break;
            case JOptionPane.NO_OPTION:
            default:
        }
    }
}
