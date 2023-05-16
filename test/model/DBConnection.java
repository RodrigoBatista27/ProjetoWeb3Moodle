package model;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author QI
 */
public class DBConnection {
    public static java.sql.Connection getConnection() throws ClassNotFoundException, SQLException {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3307/clube";
        String user = "root";
        String pass = "";

        Class.forName(driver);
        java.sql.Connection con = DriverManager.getConnection(url, user, pass);
        return con;
    }
}
