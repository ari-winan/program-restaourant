package Main;

/**
 *
 * @author Kelompok 3
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import javax.swing.JOptionPane;

public class ConnectDB {
    public Connection ConnectDB(){//Connect to DB
        Connection con;
        String url = "jdbc:mysql://localhost:3306/burgerakc?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=Asia/Kuala_Lumpur";
        String user = "root", pass="";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
            return con;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
    public boolean createAccount(String username, String password, String namaLengkap, String namaPanggilan, String noHp, String alamat){
        Connection con = ConnectDB();
        String query = "insert into karyawan(id_karyawan,password,nama_karyawan,nama_panggilan,no_hp,alamat_karyawan) values (?,?,?,?,?,?)";
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,namaLengkap);
            ps.setString(4,namaPanggilan);
            ps.setString(5,noHp);
            ps.setString(6,alamat);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Pembuatan akun berhasil","Berhasil",JOptionPane.INFORMATION_MESSAGE);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error Duplicate ID", "Error", JOptionPane.WARNING_MESSAGE);
        }
        return false;
    }
    
    public void createNewMenu(String jenis, String id, String nama, int harga){
        Connection con = ConnectDB();
        String query = "insert into menu(jenis, id, nama, harga) values (?,?,?,?)";
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, jenis);
            ps.setString(2, id);
            ps.setString(3, nama);
            ps.setInt(4, harga);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            JOptionPane.showMessageDialog(null,"Error Duplicate ID","Error",JOptionPane.WARNING_MESSAGE);
        }
    }
    
    
    public ArrayList<UserPass> login(){
        ArrayList<UserPass> al = new ArrayList<>();
        Connection con = ConnectDB();
        String query="select id_karyawan,password,nama_panggilan from karyawan";
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            UserPass up;
            while(rs.next()){
                up = new UserPass(rs.getString("id_karyawan"),rs.getString("password"),rs.getString("nama_panggilan"));
                al.add(up);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    
    public ArrayList<ListFoodMenu> menu(String jenis){
        ArrayList<ListFoodMenu> al = new ArrayList<>();
        Connection con = ConnectDB();
        String query = "select id, nama, harga from menu where jenis=?";
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps=con.prepareStatement(query);
            ps.setString(1,jenis);
            rs=ps.executeQuery();
            ListFoodMenu lfm;
            while(rs.next()){
                lfm = new ListFoodMenu(jenis,rs.getString("id"),rs.getString("nama"),rs.getInt("harga"));
                al.add(lfm);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    
    
    public void updateFoodMenu(String id, String nama, int harga){
        Connection con = ConnectDB();
        PreparedStatement ps;
        String query = "update menu set nama=?, harga=? where id=?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, nama);
            ps.setInt(2, harga);
            ps.setString(3, id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    
    public void deleteFoodMenu(String id){
        Connection con = ConnectDB();
        PreparedStatement ps;
        String query = "delete from menu where id=?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public String nomorPesanan(int opsi){
        String tahun = setgetKasir.getDateForYear(), bulanHari = setgetKasir.getDateForDM(), temp="";
        int indeks=1;
        Connection con = ConnectDB();
        PreparedStatement ps;
        ResultSet rs;
        String query;
        if(opsi==0) query = "select nomor_pesanan nomor from burgera where nomor_pesanan like ?";
        else query = "select nomor_pesanan nomor from beli where nomor_pesanan like ?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, "%"+tahun+"-"+bulanHari+"%");
            rs = ps.executeQuery();
            int max=0;
            while(rs.next()){
                temp = rs.getString("nomor");
                String pisah[] = temp.split("-");
                if(Integer.valueOf(pisah[2])>max) max=Integer.valueOf(pisah[2]);
            }
            indeks += max;
            return tahun+"-"+bulanHari+"-"+indeks;
        }catch(Exception e){e.printStackTrace();}
        return null;
    }
    public void batalPesanan(int opsi, String nomorPesanan){
        String query;
        if(opsi==0) query="delete from burgera where nomor_pesanan=?";
        else query="delete from beli where nomor_pesanan=?";
        Connection con = ConnectDB();
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, nomorPesanan);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public ArrayList<MenuPesan> jenisChange(String obj){
        ArrayList<MenuPesan> al = new ArrayList<>();
        String query = "select * from menu where jenis=?";
        PreparedStatement ps;
        Connection con = ConnectDB();
        ResultSet rs;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, obj);
            rs = ps.executeQuery();
            while(rs.next()){
                MenuPesan mp = new MenuPesan(rs.getString("jenis"), rs.getString("id"), rs.getString("nama"), rs.getInt("harga"));
                al.add(mp);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
        
    public ArrayList<MenuPesan> addOn(){
        ArrayList<MenuPesan> al = new ArrayList<>();
        Connection con = ConnectDB();
        PreparedStatement ps;
        ResultSet rs;
        String query = "select * from menu where jenis=?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1,"ADD-ON");
            rs = ps.executeQuery();
            
            while(rs.next()){
                MenuPesan mp = new MenuPesan(rs.getString("jenis"),rs.getString("id"),rs.getString("nama"),rs.getInt("harga"));
                al.add(mp);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    
    public ArrayList<MenuPesan> cariMenu(String key, int opsi){
        Connection con = ConnectDB();
        ArrayList<MenuPesan> al = new ArrayList<>();
        String query;
        if(opsi==0) query = "select jenis,id,nama,harga from menu where id=? and jenis not in (select jenis from menu where jenis=?)";
        else query = "select jenis,id,nama,harga from menu where nama like ? and jenis not in (select jenis from menu where jenis=?)";
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps = con.prepareStatement(query);
            if(opsi==0) ps.setString(1, key);
            else ps.setString(1, "%"+key+"%");
            ps.setString(2,"ADD-ON");
            rs = ps.executeQuery();
            while(rs.next()){
                MenuPesan mp = new MenuPesan(rs.getString("jenis"),rs.getString("id"),rs.getString("nama"),rs.getInt("harga"));
                al.add(mp);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    
    public void inputPesanan(String nomor, String idKasir, String idMenu, String idAddOn, int satuan, int harga, String makan, String tanggal){
        String query = "insert into burgera(nomor_pesanan,id_kasir,id_menu,addon,satuan,harga,makan,tanggal) values (?,?,?,?,?,?,?,?)";
        Connection con = ConnectDB();
        PreparedStatement ps;
        try{
            ps=con.prepareStatement(query);
            ps.setString(1, nomor);
            ps.setString(2, idKasir);
            ps.setString(3, idMenu);
            ps.setString(4, idAddOn);
            ps.setInt(5, satuan);
            ps.setInt(6, harga);
            ps.setString(7, makan);
            ps.setString(8, tanggal);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public ArrayList<TabelPesanan> showPesanan(String nomor){
        String query = "select burgera.indeks, burgera.id_menu, menu.nama, burgera.addon, burgera.satuan, burgera.harga from burgera inner join menu on burgera.id_menu = menu.id where burgera.nomor_pesanan=?";
        ArrayList<TabelPesanan> al = new ArrayList<>();
        Connection con = ConnectDB();
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, nomor);
            rs = ps.executeQuery();
            while(rs.next()){
                TabelPesanan tp = new TabelPesanan(rs.getString("nama"),rs.getString("addon"), rs.getString("id_menu"), rs.getInt("harga"), rs.getInt("satuan"), rs.getInt("indeks"));
                al.add(tp);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    
    public void updatePesanan(int satuan, int indeks, String addon, int harga){
        String query = "update burgera set satuan=?, addon=?, harga=? where indeks=?";
        Connection con = ConnectDB();
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setInt(1,satuan);
            ps.setString(2, addon);
            ps.setInt(3,harga);
            ps.setInt(4,indeks);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public void deletePesanan(int indeks){
        String query = "delete from burgera where indeks=?";
        Connection con = ConnectDB();
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setInt(1,indeks);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public void beliBarang(String barang, int harga, String nomorPesanan){
        Connection con = ConnectDB();
        String query = "insert into beli(barang,harga,tanggal,nomor_pesanan) values (?,?,?,?)";
        PreparedStatement ps;
        try{
            ps = con.prepareStatement(query);
            ps.setString(1,barang);
            ps.setInt(2, harga);
            ps.setString(3, setgetKasir.getDateForDB());
            ps.setString(4, nomorPesanan);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    public ArrayList<BeliBarang> showBeli(String key){
        ArrayList<BeliBarang> al = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        Connection con = ConnectDB();
        String query="select indeks,barang,harga from beli where nomor_pesanan=?";
        try{
           ps=con.prepareStatement(query);
           ps.setString(1,key);
           rs = ps.executeQuery();
           while(rs.next()){
               BeliBarang bb = new BeliBarang(rs.getString("barang"),rs.getInt("harga"),rs.getInt("indeks"));
               al.add(bb);
           }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    public void updateBeli(String barang, int harga, int indeks){
        Connection con = ConnectDB();
        PreparedStatement ps;
        String query = "update beli set barang=?,harga=? where indeks=?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1, barang);
            ps.setInt(2, harga);
            ps.setInt(3,indeks);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    public void deleteBeli(int indeks){
        Connection con = ConnectDB();
        PreparedStatement ps;
        String query = "delete from beli where indeks=?";
        try{
            ps = con.prepareStatement(query);
            ps.setInt(1,indeks);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }
    
    public ArrayList<NomorDanTanggal> getNomorPesananFromTanggal(String dari, String sampai, int opsi){
        ArrayList<NomorDanTanggal> al = new ArrayList<>();
        Connection con = ConnectDB();
        PreparedStatement ps;
        ResultSet rs;
        String query;
        if(opsi==0)query = "select distinct nomor_pesanan,tanggal from burgera where tanggal>=? and tanggal<=?";
        else query = "select distinct nomor_pesanan,tanggal from beli where tanggal>=? and tanggal<=?";
        try{
            ps = con.prepareStatement(query);
            ps.setString(1,dari);
            ps.setString(2,sampai);
            rs = ps.executeQuery();
            while(rs.next()){
                NomorDanTanggal ndm = new NomorDanTanggal(rs.getString("nomor_pesanan"),rs.getString("tanggal"));
                al.add(ndm);
            }
        }catch(Exception e){e.printStackTrace();}
        return al;
    }
    public ArrayList<Integer> getTotal(ArrayList<NomorDanTanggal> list, int opsi){
        ArrayList<Integer> al=new ArrayList<>();
        Connection con = ConnectDB();
        PreparedStatement ps;
        ResultSet rs;
        String query;
        if(opsi==0) query="select sum(satuan*harga) total from burgera where nomor_pesanan=?";
        else query="select sum(harga) total from beli where nomor_pesanan=?";
        for(NomorDanTanggal ndm:list){
            try{
                ps = con.prepareStatement(query);
                ps.setString(1,ndm.getNomorPesanan());
                rs=ps.executeQuery();
                while(rs.next())
                    al.add(rs.getInt("total"));
            }catch(Exception e){e.printStackTrace();}
        }
        return al;
    } 
}
