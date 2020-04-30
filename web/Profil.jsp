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
            <img src="images/1.jpg"/>
		<h1>                  
		<span>L</span>ps<span>P</span>lus 
		</h1>
	</div>
                              <%
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
   
    %>	
			<form action="#" method="get">
            <div class="pom-agile">
		<input placeholder="Matricule" name="Matricule1" type="text"  value="<%=Matricule%>"  disabled/>
                <input placeholder="Matricule" name="Matricule" type="hidden" value="<%=Matricule%>"  disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="CIN" name="CIN"  type="text" value="<%=CIN%>" disabled/>
            </div>    
                
            <div class="pom-agile">
		<input placeholder="Nom" name="Nom" type="text" value="<%=Nom%>" disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Prenom" name="Prenom"  type="text" value="<%=Prenom%>" disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Sexe" name="Sexe"  type="text" value="<%=Sexe%>" disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Date Naissance" name="Datenaissance"  type="text" value="<%=Datenaissance%>" disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Telephone" name="Telephone"  type="text" value="<%=Telephone%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Fixe" name="Fixe"  type="text" value="<%=Fixe%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Ville" name="Ville"  type="text" value="<%=Ville%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Adresse" name="Adresse"  type="text" value="<%=Adresse%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Code postale" name="Codepostale"  type="text" value="<%=Codepostale%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Email" name="Email"  type="text" value="<%=Email%>" disabled/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Situation familiale" name="Situationfamiliale"  type="text" value="<%=Situationfamiliale%>" required/>
            </div>
            
            <div class="pom-agile">
		<input placeholder="Nombre enfant" name="Nbenfant"  type="text" value="<%=Nbenfant%>" required/>
            </div>
            
            <div class="right-w3l">
		<input type="submit" value="Modifier">
            </div>
	</form>	
		</div>
	</div>
	<!--//main-->
	
</body>

</html>