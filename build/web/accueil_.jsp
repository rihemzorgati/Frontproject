<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LTN_Application</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/logo.png" />
    

    <!-- Css pub accueil -->

    <!-- Core Stylesheet -->
    <link href="stylepubaccueil.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="csspubaccueil/responsive/responsive.css" rel="stylesheet">
    <!-- End Css pub accueil -->
  </head>
  <body>
       <%
          String nom = session.getAttribute("Nom").toString();
          String prenom = session.getAttribute("Prenom").toString();
     %>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="index.jsp"><img src="assets/images/logo.png" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          
          <div class="search-field d-none d-md-block">
              
                 <form class="form-sample" action="id">
                     
                     <table>
                          
                    <tr>
                        <td>
                            <div class="d-flex align-items-center mr-4 text-muted font-weight-light">
                            <i class="mdi mdi-account-outline icon-sm mr-2"></i>
                            <input type="text" class="form-control form-control-lg" name="Login" placeholder="Login" required>
                            </div>
                        </td>
                        <td>
                   
                   <div class="d-flex align-items-center mr-4 text-muted font-weight-light">
                        <i class="mdi mdi-lock"></i><span class="marge"></span>
                      <input type="password" class="form-control form-control-lg" name="Motdepasse" placeholder="Mot de passe" required>
                  </div>
                      
                   
                    </td>
                    <td>
                 <button type="submit" class="btn btn-gradient-primary">Connexion</button>
                    </td>
                    </tr>
                    
                        <td> </td>
                        <td>
                            <a href="mpoub_1.html"> <h6> Mot de passe oublié? </h6></a>
                        </td>
                
                   
                        </table> 
                </form>
              
          </div>       
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper"><!-- bordure grip en haut-->
        <div class="main-panel"><!-- bordure footre-->
          <div class="content-wrapper"> <!-- bordure gris lkol-->
              <div class="row"> 
              <div class="col-12">
                <div class="card">
                  <div class="card-body">                    
                    <form action="Ajout_utilisateur.jsp">
                        <div class="header-w3l">
                            <h1>   <span>L</span>ps<span>P</span>lus </h1>
                            </div>
                        
    <div id="pattern-switcher">
      <br>
    <h6> Bienvenu <%=nom%> <%=prenom%> </h6>
      
    </div>
    <div id="patter-close">
        <i class="fa fa-times" aria-hidden="true"></i>
    </div>
    
 
                        
                    </form>
                  </div>
                </div>
              </div>
          </div>
            
             
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="foo n  ter">
              		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">Contact</h3>
						<div class="widget-body">
							<p> Phone: +499112023-0<br>
                                                            Fax: +499112023-455<br>
								<a href="mailto:#">info@leoni.com</a><br>
								<br>
							</p>	
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Nous contact</h3>
						<div class="widget-body">
							<p class="follow-me-icons">
																
								<a href="http://www.facebook.com"><i class="mdi mdi-facebook"></i></a>
                                                        <p> <a href="#">ajmi.adem@leoni.com</a> </p>
							</p>	
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">Info</h3>
						<div class="widget-body">
							<p>cette application permet d'améliorer vos penser et de gagner plusieurs cadeaux selon votre idée</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>
              
             
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">" Agissez comme s'il était impossible d'échouer. "  <i class="mdi mdi-heart text-danger"></i> 
                 <span class="marge"></span>
                  <span class="marge"></span>
                  <span class="marge"></span>
                  <a href="#"> <i class="mdi mdi-arrow-up-bold"></i></a>
              </span>
            
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- End custom js for this page -->
    
    
    
     
        <!-- js pubaccueil --!>
     <!-- Jquery-2.2.4 js -->
    <script src="jspubaccueil/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="jspubaccueil/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="jspubaccueil/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="jspubaccueil/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="jspubaccueil/active.js"></script>
  </body>
</html>