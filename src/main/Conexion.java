
package main;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class Conexion {
     private final String bd="db_example";;
    private final String url="jdbc:postgresql://localhost/"+bd;
    private final String usuario="postgres";
    private final String contraseña="";
    private Connection cnx=null;
      
    public Conexion(){
        conectar(); 
    }
    
    public void conectar(){
        try {
            Class.forName("org.postgresql.Driver");
            cnx= DriverManager.getConnection(url, usuario, contraseña);
        }catch (ClassNotFoundException | SQLException e) { 
            JOptionPane.showMessageDialog(null, "Metodo 'conectar': " + e.getMessage());
        }
    }
            
    public ResultSet ejecutarConsulta(String Consulta){
        ResultSet res = null;
        try {
            Statement stmt = cnx.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            res = stmt.executeQuery(Consulta);  
        }catch (SQLException err) {
            JOptionPane.showMessageDialog(null, "Metodo 'ejecutarConsulta': " + err);
        }
        return res;
    }   
}
