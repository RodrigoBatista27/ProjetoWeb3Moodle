package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ValidaLoginServlet")
public class ValidaLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
  
        
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        boolean isValid = false;
        
        
        isValid = email.equals("abc@gmail.com");
        
        if (isValid) {
            // Lógica de validação bem-sucedida
            // Faça as ações necessárias para lidar com o login válido
            System.out.println("teste");
            // Por exemplo, redirecionar para a página inicial
            response.sendRedirect("home.jsp");
        } else {
            // Lógica de validação falhou
            // Faça as ações necessárias para lidar com o login inválido
            System.out.println("teste");
            // Por exemplo, redirecionar de volta para o formulário de login com uma mensagem de erro
            request.setAttribute("mensagemErro", "Email ou senha inválidos");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
