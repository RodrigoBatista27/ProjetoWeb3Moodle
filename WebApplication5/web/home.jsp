<%@ page language="java" import="java.sql.*" %>
<html>
<head><title>Aprendendo JSP</title>
</head>
<body>
 
<%
  String url = "jdbc:mysql://localhost/db_usuario";
  String usuario = "root";
  String senha = "root";
   
  Connection conn = null;
   
  try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, usuario, senha);
  }
  catch(SQLException ex){
    out.println("SQLException: " + ex.getMessage() + "<br>");
    out.println("SQLState: " + ex.getSQLState() + "<br>");
    out.println("VendorError: " + ex.getErrorCode() + "<br>");
  }
  catch(Exception e){
    out.println("Problemas ao tentar conectar com o banco de dados");
  }
   
  // testa se a conexão foi efetuada com sucesso
  if(conn != null)
    out.println("Conexão efetuada com sucesso!"); 
%>
 
</body>
</html>