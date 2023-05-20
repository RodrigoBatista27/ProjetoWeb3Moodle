<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro</title>
</head>
<body>
    <h1>Cadastro de Usuário</h1>
    
    <%-- Exibir mensagem de sucesso, se houver --%>
    <% if (request.getAttribute("mensagemSucesso") != null) { %>
        <p style="color: green;"><%= request.getAttribute("mensagemSucesso") %></p>
    <% } %>
    
    <%-- Exibir mensagem de erro, se houver --%>
    <% if (request.getAttribute("mensagemErro") != null) { %>
        <p style="color: red;"><%= request.getAttribute("mensagemErro") %></p>
    <% } %>
    
    <%-- Formulário de cadastro --%>
    <form action="CadastroServlet" method="post">
        <div>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>
        </div>
        <div>
            <label for="senha">Senha:</label>
            <input type="password" name="senha" id="senha" required>
        </div>
        <div>
            <input type="submit" value="Cadastrar">
        </div>
    </form>
</body>
</html>
