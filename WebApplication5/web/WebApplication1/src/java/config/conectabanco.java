package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class conectabanco {
      
    Connection con;
    String url="jdbc:mysql://localhost:3306/db_login";
    String user="root";
    String pass="root";
    public Connection ConectaMySql(String banco) throws SQLException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");            
            try{
               con=DriverManager.getConnection(url,user,pass);   
            } catch (SQLException ex) {
                System.out.println("Caminho, senha ou usuarios incorretos");
            }
                       
        } catch (ClassNotFoundException ex){
            System.out.printf("Driver não encontrado");
        }
        return con;
    }
    
}