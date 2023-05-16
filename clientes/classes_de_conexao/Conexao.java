/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clientes.classes_de_conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Roddy
 */
public class Conexao {
    
    private static String caminho = "mysql://localhost/db_usuarios";
    private static String usuario = "root"; 
    private static String senha = "";
    
    public static Connection faz_conexao() throws SQLException {
       
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            
            return DriverManager.getConnection(caminho, usuario, senha);
            
            
        } catch (ClassNotFoundException e) {
             
            throw new SQLException(e.getException());
            
        } finally {
            if(DriverManager.getConnection(caminho, usuario, senha) != null) {
                DriverManager.getConnection(caminho, usuario, senha).close();
            }
        }
        
    }
            
}
