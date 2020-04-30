/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import controller.MD5Password;
import controller.connexionController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author sonia
 */
@WebServlet(urlPatterns = {"/id"})
public class id extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
            response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {//bienvenu foulen elfouleni
            HttpSession session= request.getSession();
            String Matricule="";  
            String CIN="";
            String Nom="";
            String Prenom="";
            String Sexe="";
            String Datenaissance="";
            String Telephone="";
            String Fixe="";
            String Ville="";
            String Adresse="";
            String Codepostale="";
            String Email="";
            String Situationfamiliale="";
            String Nbenfant="";
            String Photo="";
            String Etat="";
            String Proposition="";
          
            MD5Password md5 = new MD5Password();
            String Login = request.getParameter("Login");           
            String Motdepasse = md5.getEncodedPassword(request.getParameter("Motdepasse")); 

            connexionController conn = new connexionController();
            Connection c= conn.getConnection();
            String req="select * from administrateur where Login='"+Login+"' and Motdepasse= '"+Motdepasse+"' " ;
            System.out.print(req);
            ResultSet rs = conn.executeSelect(req);
          
            int cpt=0;
            while(rs.next())
            {
                Matricule=rs.getString(1);
                Nom=rs.getString(2);
                Prenom=rs.getString(3);
                Email=rs.getString(4);
                Login=rs.getString(5);
                Motdepasse=rs.getString(6);
                Photo=rs.getString(7);
                
               cpt++;
            }
            
            if (cpt==0)
            {
                  
              
               req="select * from utilisateur where Login='"+Login+"' and Motdepasse='"+Motdepasse+"' " ;
               System.out.print(req);
               ResultSet rs1 = conn.executeSelect(req);
         
               int cptt=0;
               while(rs1.next())
               {
                   Matricule=rs1.getString(1);
                   CIN=rs1.getString(2);
                   Nom=rs1.getString(3);
                   Prenom=rs1.getString(4);
                   Sexe=rs1.getString(5);
                   Datenaissance=rs1.getString(6);
                   Telephone=rs1.getString(7);
                   Fixe=rs1.getString(8);
                   Ville=rs1.getString(9);
                   Adresse=rs1.getString(10);
                   Codepostale=rs1.getString(11);                  
                   Email=rs1.getString(12);
                   Situationfamiliale=rs1.getString(13);
                   Nbenfant=rs1.getString(14);
                   Login=rs1.getString(15);
                   Motdepasse=rs1.getString(16);
                   Etat=rs1.getString(17);
                   Photo=rs1.getString(18);  
                cptt++;
               }
         
               if (cptt==0)
               { 
               
                    response.sendRedirect("accueil_1.html");
               }
               
               if (cptt!=0)
               {
                   
                    req="select * from proposition where Matricule="+Matricule+" " ;
               System.out.print(req);
               ResultSet rs2 = conn.executeSelect(req);
         
               int cpttt=0;
               while(rs2.next())
               {
                   Proposition=rs2.getString(1);
                   Matricule=rs2.getString(2);                   
                cpttt++;
               }
           
                   session.setAttribute("Matricule", Matricule);
                   session.setAttribute("CIN", CIN);
                   session.setAttribute("Nom", Nom);
                   session.setAttribute("Prenom", Prenom);
                   session.setAttribute("Sexe", Sexe);
                   session.setAttribute("Datenaissance", Datenaissance);
                   session.setAttribute("Telephone", Telephone);
                   session.setAttribute("Fixe", Fixe);
                   session.setAttribute("Ville", Ville);
                   session.setAttribute("Adresse", Adresse);
                   session.setAttribute("Codepostale", Codepostale);
                   session.setAttribute("Email", Email);
                   session.setAttribute("Situationfamiliale", Situationfamiliale);
                   session.setAttribute("Nbenfant", Nbenfant);
                   session.setAttribute("Login", Login);
                   session.setAttribute("Motdepasse", Motdepasse);
                   session.setAttribute("Etat", Etat);
                   session.setAttribute("Photo", Photo);
                    session.setAttribute("Proposition", Proposition);
          
               response.sendRedirect("utilisateur/accueilutilisateur.jsp");
               
               }
               
                response.sendRedirect("accueil_1.html");
            }
            
            
            if (cpt!=0)
            {
                   session.setAttribute("Matricule", Matricule);
                   session.setAttribute("Nom", Nom);
                   session.setAttribute("Prenom", Prenom);
                   session.setAttribute("Email", Email);
                   session.setAttribute("Login", Login);
                   session.setAttribute("Motdepasse", Motdepasse);
                   session.setAttribute("Photo", Photo);
                response.sendRedirect("administrateur/index.jsp");
            }
        
        }  catch(Exception e)
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