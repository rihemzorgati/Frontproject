/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import controller.MD5Password;
import controller.connexionController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rihem
 */
@WebServlet(urlPatterns = {"/modifierutilisateur"})
public class modifierutilisateur extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	try (PrintWriter out = response.getWriter()) {
	    /* TODO output your page here. You may use following sample code. */
	   /* 	   MD5Password md5 = new MD5Password();
	   String tel = request.getParameter("Telephone");
	   String fix = request.getParameter("Fixe");	   
	   String ville = request.getParameter("Ville");
	   String adresse = request.getParameter("Adresse");
	   String cp = request.getParameter("Codepostale");
	   String sitfam = request.getParameter("Situationfamiliale");
	   String nbenf = request.getParameter("Nbenfant");	       
           String Login = request.getParameter("Login");  
	   

           String Motdepasse = md5.getEncodedPassword(request.getParameter("Motdepasse"));      

	    /*connexionController conn = new connexionController();
            Connection c= conn.getConnection();
	    out.println("cc");
            String req="Update utilisateur set Telephone="+tel+"" ;
            System.out.print(req);
            int rs = conn.executeUpdate(req);
            conn.executeUpdate(req);*/
              	      response.sendRedirect("accueil.html");
	}catch(Exception e)
          {
            System.out.print(e.toString());
          }
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

}