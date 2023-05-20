<%-- 
    Document   : index.jsp
    Created on : 16 de mai. de 2023, 20:00:08
    Author     : QI
--%>

<%@page import="config.conectabanco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/edu.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Login Moodle</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            conectabanco conn = new conectabanco();
            Connection conexao = conn.ConectaMySql("db_login");
        %>
        <div id="main-container">
            
            <h1>Seja Bem-Vindo ao seu Portal</h1>
            <form id="register-form" method="post" action="">
                <div class="full-box">
                    
                    <label for="email">Email</label>
                    
                    <input type="text" name="txtuser" id="txtuser" placeholder="Digite Seu Email">
                </div>
                
                <div class="half-box">  
                    <label for="password">Senha</label>
                    <input type="password" name="txtpass" id="txtpass" placeholder="Digite Sua Senha">
                    </div>
    
                <div class="full-box">
                    <input type="submit" value="Entrar" id="btn-entrar">
                    <a href="./cadastro.html">Não possui conta? Cadastre-se para acessar seu portal</a>
                </div>
            </form>
        </div>
        
        <%  
            if (conexao != null) {
                if (request.getParameter("txtuser") != null && request.getParameter("txtpass") != null) {
                    String login = request.getParameter("txtuser");
                    String pass = request.getParameter("txtpass");
                    Statement st = conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                    ResultSet rs = st.executeQuery("select * from login where usuario ='" + login + "' and senha='" + pass + "'");
                    if (rs.next()) {
                        response.sendRedirect("principal.jsp");
                    } else {
                        out.println("Usuário ou senha inválidos");
                    }
                    rs.close();
                    st.close();
                }
            } else {
                out.println("Não foi possível conectar ao banco de dados");
            }
        %>
        
        <p class="error-validation-template"></p>
    </body>
</html>
