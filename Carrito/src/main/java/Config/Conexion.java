package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    private static String database = "carrito";
    private static String user = "root";
    private static String password = "";
    private static String url = "jdbc:mysql://localhost:3306/"+database;

    public  static  Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion Establecida");
        } catch (Exception e) {
            System.out.println("Reintente nuevamente");
        }
        return conn;

    }
}
