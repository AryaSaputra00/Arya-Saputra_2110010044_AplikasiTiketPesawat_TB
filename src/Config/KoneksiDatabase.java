/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class KoneksiDatabase {
       
    public static Connection Konek;
    public static Statement stmt;
    public static PreparedStatement prstmt;
    
    public KoneksiDatabase () {
        try {
            String url = "jdbc:mysql://localhost/tiket_pesawat";
            String user = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            Konek =DriverManager.getConnection(url, user, password);
            stmt = Konek.createStatement();
            System.out.println("database berhasil terkoneksi");
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.toString());
        }
    }
    
    
}
