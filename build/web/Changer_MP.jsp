<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller.connexionController"%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Login</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Simple Signin Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/stylee.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	
	<!--//header-->
	<div class="main-content-agile">
		<div class="sub-main-w33">
			
                            <!--header-->
                        <div class="header-w3l">
            <img src="images/1.jpg" />
		<h1>                  
		<span>L</span>ps<span>P</span>lus 
		</h1>
	</div>
			 <% 
 String Matricule = request.getParameter("Matricule");
     String nom="";
     String prenom="";
     String email="";
       int cpt=0;
 try { 
                connexionController conn = new connexionController();
                Connection c= conn.getConnection();
                String req="select * from utilisateur where Matricule="+Matricule+" and Etat=0";
                System.out.print(req);
                conn.executeSelect(req);               
                ResultSet rs = conn.executeSelect(req);
                                      
                while(rs.next())
                {              
                nom=rs.getString(2);
                prenom=rs.getString(3);
                email=rs.getString(5);
               cpt++;
                }             
                }  catch(Exception e)
                    {
                      System.out.print(e.toString());
                    }
                               
if(cpt==1){ 


                                %>
	<form action="ChangerMP" method="get">
            <div class="pom-agile">
		<input placeholder="Matricule" name="Matricule1" type="text" value="<%=Matricule%>" disabled/>
            </div>
           
		<input placeholder="Matricule" name="Matricule" type="hidden" value="<%=Matricule%>" required/>
                     
            <div class="pom-agile">
		<input placeholder="Nom" name="Nom" type="text" value="<%=nom%>" disabled/>
            </div>
            <div class="pom-agile">
		<input placeholder="Prenom" name="Prenom"  type="text" value="<%=prenom%>" disabled/>
            </div>
            <div class="pom-agile">
		<input placeholder="Email" name="Email"  type="text" value="<%=email%>" disabled/>
            </div>
            <div class="pom-agile">
		<input placeholder="Nouveau mot de passe" name="Nouveaump"  type="password" required/>
            </div>
            <div class="pom-agile">
		<input placeholder="Confirmer mot de passe" name="confirmermp"  type="password" required/>
            </div>
            <div class="right-w3l">
		<input type="submit" value="Valider">
            </div>
	</form>	
            <%
             }
else{
response.sendRedirect("MessageErreur_Dejaexiste.html");

}
                %>
			
		</div>
	</div>
	<!--//main-->
	
</body>

</html>