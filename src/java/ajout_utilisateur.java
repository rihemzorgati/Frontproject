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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rihem
 */
@WebServlet(urlPatterns = {"/ajout_utilisateur"})
public class ajout_utilisateur extends HttpServlet {

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
	    
	    
	    HttpSession session= request.getSession();
	connexionController conn = new connexionController();
        Connection cc; 
	String msg;
	String Matricule = request.getParameter("Matricule");
	
	        String req1 ="select * from employee where Matricule="+Matricule+"";
		ResultSet res=conn.executeSelect(req1);
                int cptt=0;
	try {
	    while (res.next()){
		cptt++;
	    }
	
        if (cptt==0){
           msg="Employe inexistant!";
        }else{
	    
	String CIN = request.getParameter("CIN");
        String Nom = request.getParameter("Nom");
        String Prenom = request.getParameter("Prenom");
        String Sexe = request.getParameter("Sexe");
        String j = request.getParameter("jour");
	String m = request.getParameter("mois");
	String a = request.getParameter("annees");
        String Telephone = request.getParameter("Telephone");
        String Fixe = request.getParameter("Fixe");
        String Ville = request.getParameter("Ville");
        String Adresse = request.getParameter("Adresse");
        String Codepostale = request.getParameter("Codepostale");
        String Email = request.getParameter("Email");
        String Situationfamiliale = request.getParameter("Situationfamiliale");
        String Nbenfant = request.getParameter("Nbenfant");
        String Login = request.getParameter("Login");
        MD5Password md5 = new MD5Password();
        String Motdepasse = md5.getEncodedPassword(request.getParameter("Motdepasse"));
	String dn=""+j+""+m+""+a;
	int Etat=0;
	String Photo = request.getParameter("Photo");
	
	  String req="insert into utilisateur values("+Matricule+","+CIN+",'"+Nom+"','"+Prenom+"','"+Sexe+"','"+dn+"',"+Telephone+","+Fixe+",'"+Ville+"','"+Adresse+"',"+Codepostale+",'"+Email+"','"+Situationfamiliale+"',"+Nbenfant+",'"+Login+"','"+Motdepasse+"',"+Etat+", '"+Photo+"')";

	 try{
	    cc= conn.getConnection();	
	    
	    if(conn.executeInsert(req)){
	    msg = "Utilisateur ajoutee avec succes";
	    }
	    else{
		msg="KO";
	    }
	    session.setAttribute("msg", msg);
	} catch(Exception e){
	    System.out.print(e.getMessage());
	}
	}
	} catch (SQLException ex) {
	    Logger.getLogger(ajout_utilisateur.class.getName()).log(Level.SEVERE, null, ex);
	}
	    
	    
	    
		/*String Matricule = request.getParameter("Matricule");
                connexionController conn1 = new connexionController();
                Connection cc= conn1.getConnection();
                String req1 ="select * from employee where Matricule="+Matricule+"";
                System.out.print(req1);
                ResultSet res=conn1.executeSelect(req1);
                int cptt=0;
               while (res.next()){
                   cptt++;
               }
        if (cptt==0){
            response.sendRedirect("msg_matricule_n'existe_pas.html");
        }else{
        
         
        int Etat=0;
        String Photo = request.getParameter("Photo");
         
                connexionController conn = new connexionController();
                Connection c= conn.getConnection();
                String req="insert into utilisateur values("+Matricule+","+CIN+",'"+Nom+"','"+Prenom+"','"+Sexe+"','"+dn+"',"+Telephone+","+Fixe+",'"+Ville+"','"+Adresse+"',"+Codepostale+",'"+Email+"','"+Situationfamiliale+"',"+Nbenfant+",'"+Login+"','"+Motdepasse+"',"+Etat+", '"+Photo+"')";
                System.out.print(req);
                conn.executeInsert(req);
            
                int cpt=0;
                response.sendRedirect("accueil_.jsp");
                
       } */
                }  catch(Exception e)
                    {
                      System.out.print(e.toString());
                    }
	
    }

    /*processRequest : s'execute aulancement du projet'
    doPost : sexecute lorsque on a des données à traités    */
    
    /*les technologies utilisés :
    backend : Java EE
    frontend: html5, css3, javascript, Bootstrap4
    editeur: netbeans
    base de données: MySQL8.0
   serveur d'application: Glassfish' (tomcat)*/
    
    
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
