package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Titular;


@WebServlet(name = "TitularController", urlPatterns = {"/TitularController"})
public class TitularController extends HttpServlet {      
    private String nome;
    private String nascimento;
    private String cpf;
    private String cep;
    private String tipo;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        this.nome =request.getParameter("user");
        this.nascimento =request.getParameter("nasc");
        this.cpf =request.getParameter("cpf");
        this.cep =request.getParameter("cep");
        this.tipo =request.getParameter("tipo");
        
        Titular t = new Titular(this.nome,this.nascimento,this.cpf,this.cep,this.tipo);
        
        TitularDAO tdao = new TitularDAO(); /* TODO output your page here. You may use following sample code. */
        tdao.insertTitular(t);
        response.sendRedirect("home.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private static class TitularDAO {

        public TitularDAO() {
        }

        private void insertTitular(Titular t) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }
    }

}