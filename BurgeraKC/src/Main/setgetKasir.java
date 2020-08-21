package Main;
/**
 *
 * @author Rudy Rachman
 */
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class setgetKasir {
    public static String user;
    public static String namaPanggilan;
    public static String getNowDate(){
        LocalDateTime now = java.time.LocalDateTime.now();
        DateTimeFormatter dtf = java.time.format.DateTimeFormatter.ofPattern("EEEE, dd MMMM yyyy");
        return dtf.format(now);
    }
    public static String getNowDateNoto(){
        LocalDateTime now = java.time.LocalDateTime.now();
        DateTimeFormatter dtf = java.time.format.DateTimeFormatter.ofPattern("dd-MM-yyyy");
        return dtf.format(now);
    }
    public static String getDateForDB(){
        LocalDateTime now = java.time.LocalDateTime.now();
        DateTimeFormatter dtf = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd");
        return dtf.format(now);
    }
    public static String getDateForYear(){
        LocalDateTime now = java.time.LocalDateTime.now();
        DateTimeFormatter dtf = java.time.format.DateTimeFormatter.ofPattern("yyyy");
        return dtf.format(now);
    }
    public static String getDateForDM(){
        LocalDateTime now = java.time.LocalDateTime.now();
        DateTimeFormatter dtf = java.time.format.DateTimeFormatter.ofPattern("MMdd");
        return dtf.format(now);
    }
}
