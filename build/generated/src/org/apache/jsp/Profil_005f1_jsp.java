package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Connection;
import controller.connexionController;

public final class Profil_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\t<title>Login</title>\n");
      out.write("\t<!-- Meta tag Keywords -->\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t<meta name=\"keywords\" content=\"Simple Signin Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements\"\n");
      out.write("\t/>\n");
      out.write("\t<script>\n");
      out.write("\t\taddEventListener(\"load\", function () {\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\n");
      out.write("\t\t}, false);\n");
      out.write("\n");
      out.write("\t\tfunction hideURLbar() {\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("\t<!-- Meta tag Keywords -->\n");
      out.write("\t<!-- css files -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/stylee.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("\t<!-- Style-CSS -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/font-awesome.css\">\n");
      out.write("\t<!-- Font-Awesome-Icons-CSS -->\n");
      out.write("\t<!-- //css files -->\n");
      out.write("\t<!-- web-fonts -->\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Play:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i\" rel=\"stylesheet\">\n");
      out.write("\t<!-- //web-fonts -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<!--//header-->\n");
      out.write("\t<div class=\"main-content-agile\">\n");
      out.write("\t\t<div class=\"sub-main-w33\">\t\t\t\n");
      out.write("                            <!--header-->\n");
      out.write("                        <div class=\"header-w3l\">\n");
      out.write("            <img src=\"images/1.jpg\"/>\n");
      out.write("\t\t<h1>                  \n");
      out.write("\t\t<span>L</span>ps<span>P</span>lus \n");
      out.write("\t\t</h1>\n");
      out.write("\t</div>\n");
      out.write("                              ");

        String Matricule = session.getAttribute("Matricule").toString();
        String CIN = "";
        String Nom = "";
        String Prenom = "";
        String Sexe = "";
        String Datenaissance = "";
        String Telephone = "";
        String Fixe = "";
        String Ville = "";
        String Adresse = "";
        String Codepostale = "";
        String Email = "";
        String Situationfamiliale = "";
        String Nbenfant = "";
        
        int cpt=0;                                                
           try { 
                connexionController conn = new connexionController();
                Connection c= conn.getConnection();
                String req="select * from utilisateur where Matricule="+Matricule+" ";
                System.out.print(req);
                conn.executeSelect(req);
                
                ResultSet rs = conn.executeSelect(req);
                 while(rs.next())
            {
                
                Matricule=rs.getString(1);
                CIN=rs.getString(2);
                Nom=rs.getString(3);
                Prenom=rs.getString(4);
                Sexe=rs.getString(5);
                Datenaissance=rs.getString(6);
                Telephone=rs.getString(7);
                Fixe=rs.getString(8);
                Ville=rs.getString(9);
                Adresse=rs.getString(10);
                Codepostale=rs.getString(11);
                Email=rs.getString(12);
                Situationfamiliale=rs.getString(13);
                Nbenfant=rs.getString(14);
                cpt++;
            }
                }  catch(Exception e)
                    {
                      System.out.print(e.toString());
                    }
   
    
      out.write("\t\n");
      out.write("\t\t\t<form action=\"#\" method=\"get\">\n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Matricule\" name=\"Matricule1\" type=\"text\"  value=\"");
      out.print(Matricule);
      out.write("\"  disabled/>\n");
      out.write("                <input placeholder=\"Matricule\" name=\"Matricule\" type=\"hidden\" value=\"");
      out.print(Matricule);
      out.write("\"  disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"CIN\" name=\"CIN\"  type=\"text\" value=\"");
      out.print(CIN);
      out.write("\" disabled/>\n");
      out.write("            </div>    \n");
      out.write("                \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Nom\" name=\"Nom\" type=\"text\" value=\"");
      out.print(Nom);
      out.write("\" disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Prenom\" name=\"Prenom\"  type=\"text\" value=\"");
      out.print(Prenom);
      out.write("\" disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Sexe\" name=\"Sexe\"  type=\"text\" value=\"");
      out.print(Sexe);
      out.write("\" disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Date Naissance\" name=\"Datenaissance\"  type=\"text\" value=\"");
      out.print(Datenaissance);
      out.write("\" disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Telephone\" name=\"Telephone\"  type=\"text\" value=\"");
      out.print(Telephone);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Fixe\" name=\"Fixe\"  type=\"text\" value=\"");
      out.print(Fixe);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Ville\" name=\"Ville\"  type=\"text\" value=\"");
      out.print(Ville);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Adresse\" name=\"Adresse\"  type=\"text\" value=\"");
      out.print(Adresse);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Code postale\" name=\"Codepostale\"  type=\"text\" value=\"");
      out.print(Codepostale);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Email\" name=\"Email\"  type=\"text\" value=\"");
      out.print(Email);
      out.write("\" disabled/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Situation familiale\" name=\"Situationfamiliale\"  type=\"text\" value=\"");
      out.print(Situationfamiliale);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"pom-agile\">\n");
      out.write("\t\t<input placeholder=\"Nombre enfant\" name=\"Nbenfant\"  type=\"text\" value=\"");
      out.print(Nbenfant);
      out.write("\" required/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"right-w3l\">\n");
      out.write("\t\t<input type=\"submit\" value=\"Modifier\">\n");
      out.write("            </div>\n");
      out.write("\t</form>\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!--//main-->\n");
      out.write("\t\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
