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
          <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-0" placeholder="Recherche">
              </div>
            </form>
          </div>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="assets/images/faces/<%=Photo%>" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black"><%=nom%> <%=prenom%></p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="../deconnexion">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> D�connexion </a>
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
                <span class="menu-title">G�rer compte</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="superAgent.jsp">Super Agent</a></li>
                  <li class="nav-item"> <a class="nav-link" href="employe.jsp">Employ�</a></li>
                </ul>
              </div>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="propositions_archiv�es.jsp">
                <span class="menu-title">Propositions archiv�es</span>
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
                  <li class="nav-item"> <a class="nav-link" href="categorie1.jsp"> Cat�gorie 1 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie2.jsp"> Cat�gorie 2 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie3.jsp"> Cat�gorie 3 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie4.jsp"> Cat�gorie 4 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie5.jsp"> Cat�gorie 5 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="categorie6.jsp"> Cat�gorie 6 </a></li>
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
                <span class="menu-title">D�connexion</span>
                <i class="mdi mdi-power menu-icon"></i>
              </a>
            </li>
          </ul>
        </nav>
           <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Formulaire </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">G�rer compte</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Super Agent</li>
                </ol>
              </nav>
            </div>
              
              
              
              <div class="row"> 
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Super Agent</h4>
                    <form class="form-sample">                   
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Matricule</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">CIN</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Nom</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Pr�nom</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Sexe</label>
                            <div class="col-sm-4">
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked> Homme </label>
                              </div>
                            </div>
                            <div class="col-sm-5">
                              <div class="form-check">
                                <label class="form-check-label">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2"> Femme </label>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date naissance</label>
                            <div class="col-sm-9">
                              <input class="form-control" placeholder="JJ/MM/AAAA" />
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">T�l�phone</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Fixe</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Ville</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>Tunisie</option>
                                <option>France</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Adresse</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Code postale</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                              <input class="form-control" placeholder="X.Y@leoni.com" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Situation familiale</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>C�libataire</option>
                                <option>En couple</option>
                                <option>Mari�(e)</option>
                                <option>Divorc�(e)</option>
                               
                              </select>
                            </div>
                          </div>
                        </div>
                          <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Nombre d'enfant</label>
                            <div class="col-sm-9">
                              <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                                <option>17</option>
                                <option>18</option>
                                <option>19</option>
                                <option>20</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                        
                        <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Login</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Mot de passe</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                        
                      <div class="form-check form-check-flat form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input">Enregistrer </label>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mr-2">Ajouter</button>
                      <button class="btn btn-light">Annuler</button>
                    </form>
                  </div>
                </div>
             
            <div class="row">            
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                 
                </div>
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Input size</h4>
                    <p class="card-description"> Add classes like <code>.form-control-lg</code> and <code>.form-control-sm</code>. </p>
                    <div class="form-group">
                      <label>Large input</label>
                      <input type="text" class="form-control form-control-lg" placeholder="Username" aria-label="Username">
                    </div>
                    <div class="form-group">
                      <label>Default input</label>
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username">
                    </div>
                    <div class="form-group">
                      <label>Small input</label>
                      <input type="text" class="form-control form-control-sm" placeholder="Username" aria-label="Username">
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Select size</h4>
                    <p class="card-description"> Add classes like <code>.form-control-lg</code> and <code>.form-control-sm</code>. </p>
                    <div class="form-group">
                      <label for="exampleFormControlSelect1">Large select</label>
                      <select class="form-control form-control-lg" id="exampleFormControlSelect1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect2">Default select</label>
                      <select class="form-control" id="exampleFormControlSelect2">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlSelect3">Small select</label>
                      <select class="form-control form-control-sm" id="exampleFormControlSelect3">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Basic input groups</h4>
                    <p class="card-description"> Basic bootstrap input groups </p>
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text bg-gradient-primary text-white">$</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                        <div class="input-group-append">
                          <span class="input-group-text">.00</span>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">$</span>
                        </div>
                        <div class="input-group-prepend">
                          <span class="input-group-text">0.00</span>
                        </div>
                        <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                          <button class="btn btn-sm btn-gradient-primary" type="button">Search</button>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div role="separator" class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                          </div>
                        </div>
                        <input type="text" class="form-control" aria-label="Text input with dropdown button">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Find in facebook" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                          <button class="btn btn-sm btn-facebook" type="button">
                            <i class="mdi mdi-facebook"></i>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Checkbox Controls</h4>
                    <p class="card-description">Checkbox and radio controls (default appearance is in primary color)</p>
                    <form>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input"> Default </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Checked </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled> Disabled </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" disabled checked> Disabled checked </label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value=""> Default </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2" checked> Selected </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadios2" id="optionsRadios3" value="option3" disabled> Disabled </label>
                            </div>
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled checked> Selected and disabled </label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="card-body">
                    <p class="card-description">Add class <code>.form-check-{color}</code> for checkbox and radio controls in theme colors</p>
                    <form>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-primary">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Primary </label>
                            </div>
                            <div class="form-check form-check-success">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Success </label>
                            </div>
                            <div class="form-check form-check-info">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Info </label>
                            </div>
                            <div class="form-check form-check-danger">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Danger </label>
                            </div>
                            <div class="form-check form-check-warning">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" checked> Warning </label>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <div class="form-check form-check-primary">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="ExampleRadio1" id="ExampleRadio1" checked> Primary </label>
                            </div>
                            <div class="form-check form-check-success">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="ExampleRadio2" id="ExampleRadio2" checked> Success </label>
                            </div>
                            <div class="form-check form-check-info">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="ExampleRadio3" id="ExampleRadio3" checked> Info </label>
                            </div>
                            <div class="form-check form-check-danger">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="ExampleRadio4" id="ExampleRadio4" checked> Danger </label>
                            </div>
                            <div class="form-check form-check-warning">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="ExampleRadio5" id="ExampleRadio5" checked> Warning </label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Inline forms</h4>
                    <p class="card-description"> Use the <code>.form-inline</code> class to display a series of labels, form controls, and buttons on a single horizontal row </p>
                    <form class="form-inline">
                      <label class="sr-only" for="inlineFormInputName2">Name</label>
                      <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">
                      <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                      <div class="input-group mb-2 mr-sm-2">
                        <div class="input-group-prepend">
                          <div class="input-group-text">@</div>
                        </div>
                        <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
                      </div>
                      <div class="form-check mx-sm-2">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" checked> Remember me </label>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mb-2">Submit</button>
                    </form>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
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
							<p>cette application permet d'am�liorer vos penser et de gagner plusieurs cadeaux selon votre id�e</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>
              
             
              
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">" Agissez comme s'il �tait impossible d'�chouer. "  <i class="mdi mdi-heart text-danger"></i></span>
              
          </footer>          <!-- partial -->
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
    <script src="assets/js/file-upload.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>