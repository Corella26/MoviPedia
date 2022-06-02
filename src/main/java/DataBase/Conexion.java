
package DataBase;

import java.sql.DriverManager;

/**
 *
 * @author jcorellac
 */
public class Conexion {

    public Conexion() {
    }
    
     public static java.sql.Connection getConnection() {
        String url, userName, password;
        url = "jdbc:mysql://localhost:3306/movies";
        userName = "root";
        password = "Soporte2";

        java.sql.Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            
            System.out.println("Se coonecto a la base de datos");
            
        } catch (Exception e) {
            System.out.println(con);
            System.out.println(url);
            System.out.println(userName);
            System.out.println(password);
            System.out.println("No Se conecto a la base de datos");
            System.out.println(e.getMessage());
        }
        return con;
    }
}
