<%@page import="controller.MD5Password"%>
<%@page import="java.sql.*"%>
<%@page import="controller.connexionController"%>

<!DOCTYPE html>
<!--[if IE 8]> 				 <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

  <head>  	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
	<meta name="description" content="fresh Gray Bootstrap 3.0 Responsive Theme "/>
	<meta name="keywords" content="Template, Theme, web, html5, css3, Bootstrap,Bootstrap 3.0 Responsive Theme" />
	<meta name="author" content="Mindfreakerstuff"/>
    <link rel="shortcut icon" href="favicon.png"> 
    
	<title>Inscription</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
    <link href="css/animate-custom.css" rel="stylesheet">
   

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
     <script src="js/custom.modernizr.js" type="text/javascript" ></script>
   
  </head>
    <body>
    	<!-- start Login box -->
    	<div class="container" id="login-block">
            <div class="row">
		<div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
                    <div class="login-box clearfix animated flipInY">
			<div class="page-icon animated bounceInDown">
			    <img src="img/login-user-icon.png" alt="User icon" />
			</div>
			<div class="login-logo">
			    <a href="#"><img src="img/login-logo.png" alt="Company Logo" /></a>
			</div> 
<hr/>
			<div class="login-form">
			    <div class="alert alert-error hide">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<h4>Error!</h4>
				Your Error Message goes here
                            </div>

    <%
      String Matricule = request.getParameter("Matricule");
        try { 
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
        
        String CIN = request.getParameter("CIN");
        String Nom = request.getParameter("Nom");
        String Prenom = request.getParameter("Prenom");
        String Sexe = request.getParameter("Sexe");
        String Datenaissance = request.getParameter("Datenaissance");
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
        int Etat=0;
        String Photo = request.getParameter("Photo");
         
                connexionController conn = new connexionController();
                Connection c= conn.getConnection();
                String req="insert into utilisateur values("+Matricule+","+CIN+",'"+Nom+"','"+Prenom+"','"+Sexe+"','"+Datenaissance+"',"+Telephone+","+Fixe+",'"+Ville+"','"+Adresse+"',"+Codepostale+",'"+Email+"','"+Situationfamiliale+"',"+Nbenfant+",'"+Login+"','"+Motdepasse+"',"+Etat+", '"+Photo+"')";
                System.out.print(req);
                conn.executeInsert(req);
                session.setAttribute("Matricule", Matricule);
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
                session.setAttribute("Photo", Photo);
                int cpt=0;
                response.sendRedirect("accueil_.jsp");
                
        }
                }  catch(Exception e)
                    {
                      System.out.print(e.toString());
                    }
    %>	
							
			</div>
                    </div>
                </div>
            </div>
        </div>
    	 
       
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script> 
        <script src="js/bootstrap.min.js"></script> 
        <script src="js/placeholder-shim.min.js"></script> 
        <script src="js/custom.js"></script>
        
        
    </body>
</html>
