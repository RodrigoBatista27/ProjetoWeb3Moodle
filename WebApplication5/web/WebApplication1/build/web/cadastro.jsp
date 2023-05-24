<%@ page import="java.sql.*" %>
<%@ page import="config.conectabanco" %>

<%
  // Verificar se o formulário foi enviado
  if (request.getMethod().equalsIgnoreCase("post")) {
    // Recuperar os valores dos campos do formulário
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
  
    if (email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {
      try {
        conectabanco conexao = new conectabanco();
        Connection conn = conexao.ConectaMySql("db_login");

        // Crie a declaração SQL
        String sql = "INSERT INTO login (usuario, senha) VALUES (?, ?)";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, senha);

        // Execute a inserção
        statement.executeUpdate();

        // Feche a conexão
        conn.close();

        // Redirecione para uma página de sucesso
        response.sendRedirect("principal.jsp");
      } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("erro.jsp?mensagem=Erro de SQL: " + e.getMessage());
      } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("erro.jsp?mensagem=Erro desconhecido: " + e.getMessage());
      }
    } else {
      // Redirecionar para uma página de erro ou exibir uma mensagem informando que os campos não estão preenchidos
      response.sendRedirect("erro.jsp?mensagem=Preencha todos os campos do formulário.");
    }
  }
%>



<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <link rel="icon" href="img/edu.png"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cadastro</title>
        <link rel="stylesheet" href="./css/style.css">
    </head>
    
    <body class="body-login">
        <div id="main-container">
            
            <h1>Cadastre-se para acessar o Moodle</h1>
               <form id="register-form" method="post">
                <div class="full-box">
                    
                    <label for="email">Email</label>
                    
                    <input type="email" name="email" id="email-rg" placeholder="Digite Seu Email">
                </div>
                <div class="half-box spacing">  
                    <label for="name">Nome</label>
                    <input type="text" name="name" id="name-rg" placeholder="Digite Seu Nome">
                </div>
                
                <div class="half-box">
                    <label for="name">Sobrenome</label>
                    <input type="text" name="lastname" id="lastname-rg" placeholder="Digite Seu Sobrenome">
                </div>
                
                <div class="half-box spacing">  
                    <label for="password">Senha</label>
                    <input type="password" name="senha" id="pass-rg" placeholder="Digite Sua Senha">
                    </div>
                
                <div class="half-box">
                    <label for="passconfirmation">Confirme a Senha</label>
                    <input type="password" name="pass" id="pass-rg" placeholder="Confirme Sua Senha">
                </div>
                    
                    <div class="full-box">
                    
                    <label for="name">Responsável</label>
                    
                    <input type="text" name="resp" id="resp-rg" placeholder="Digite o Nome do Seu Responsável">
                </div>
                
                <div class="full-box">
                    <input type="submit" value="Cadastrar" id="btn-rg">
                    <a href="./index.jsp">Já possui conta? Clique aqui para entrar</a>
                </div>
            </form> 
        </div>
        <p class="error-validation-template"></p>
    </body>
</html>