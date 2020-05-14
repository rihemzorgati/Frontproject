<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LTN_Application </title>
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
  </head>
  <body>
      
       <%
          String nom = session.getAttribute("Nom").toString();
          String prenom = session.getAttribute("Prenom").toString();
          String Photo = session.getAttribute("Photo").toString();          
          %>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="index.jsp"><img src="assets/images/logo.png" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
         
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="assets/images/faces/<%=Photo%>" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black"><%=nom%> <%=prenom%> </p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="../deconnexion">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> Déconnexion </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-email-outline"></i>
                <span class="count-symbol bg-warning"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <h6 class="p-3 mb-0">Messages</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face4.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                    <p class="text-gray mb-0"> 1 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face2.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                    <p class="text-gray mb-0"> 15 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face3.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                    <p class="text-gray mb-0"> 18 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">4 new messages</h6>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="mdi mdi-bell-outline"></i>
                <span class="count-symbol bg-danger"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <h6 class="p-3 mb-0">Notifications</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="mdi mdi-calendar"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                    <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-warning">
                      <i class="mdi mdi-settings"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                    <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-info">
                      <i class="mdi mdi-link-variant"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                    <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
              </div>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
              <a class="nav-link" href="../deconnexion">
                <i class="mdi mdi-power"></i>
              </a>
            </li>
            <li class="nav-item nav-settings d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-format-line-spacing"></i>
              </a>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
       <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="assets/images/faces/<%=Photo%>" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2"><%=nom%> <%=prenom%></span>
                  <span class="text-secondary text-small">DRH</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">
                <span class="menu-title">Accueil</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="profil.jsp">
                <span class="menu-title"> Profil </span>
                <i class="mdi mdi-contacts menu-icon"></i>
              </a>
            </li>
            
            
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Gérer compte</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="employe.jsp">Employé</a></li>
                </ul>
              </div>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="propositions_archivees.jsp">
                <span class="menu-title">Propositions archivées</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
                      
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title">Catalogue</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-medical-bag menu-icon"></i>
              </a>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="categorie1.jsp"> Catégorie 1 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie2.jsp"> Catégorie 2 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie3.jsp"> Catégorie 3 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie4.jsp"> Catégorie 4 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie5.jsp"> Catégorie 5 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie6.jsp"> Catégorie 6 </a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item sidebar-actions">
            <li class="nav-item"> 
              <a class="nav-link" href="notification.jsp">
                <span class="menu-title">Notifications</span>
                <i class="mdi mdi-bell-outline menu-icon "></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../deconnexion">
                <span class="menu-title">Déconnexion</span>
                <i class="mdi mdi-power menu-icon"></i>
              </a>
            </li>
          </ul>
        </nav>
        
                <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">           
              
            <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white mr-2">
                  <i class="mdi mdi-home"></i>
                </span> Catégorie 6 </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Catalogue</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Catégorie 6</li>
                </ol>
              </nav>
            </div>
                  <div class="row"> 
                   
                <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-r card-img-holder text-white">           
                    <img src="assets/images/categorie6/cuisine.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  Cuisine </span> </h6>              
                </div>
              </div>
                   
                <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-j card-img-holder text-white">           
                    <img src="assets/images/categorie6/moto.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  Moto </span> </h6>              
                </div>
              </div>
                   
                    <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-k card-img-holder text-white">           
                    <img src="assets/images/categorie6/dressing.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  Dressing </span> </h6>              
                </div>
              </div>
                   
                          <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-k card-img-holder text-white">           
                    <img src="assets/images/categorie6/omra.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  Omra*2 </span> </h6>              
                </div>
              </div>
                   
               <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-r card-img-holder text-white">           
                    <img src="assets/images/categorie6/voyage.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  Voyage </span> </h6>              
                </div>
              </div>
                   
                <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-j card-img-holder text-white">           
                    <img src="assets/images/categorie6/3d.jpg" class="card-img-absolute" alt="circle-image" />                 
                    <h3 class="mb-5"> <br/><br/>  <span class="marge"></span></h3>
                    <h6> <br/><br/> <span class="marge"><span class="marge">  3D </span> </h6>              
                </div>
              </div>
                   
            </div>
              
              
          
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
        <footer class="footer">
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
              
             
              
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">" Agissez comme s'il était impossible d'échouer. "  <i class="mdi mdi-heart text-danger"></i></span>
              
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
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <!-- End custom js for this page -->
  </body>
</html>