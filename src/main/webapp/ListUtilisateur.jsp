<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Matiere</title>
         <!-- MDB icon -->
            <link rel="icon" href="assets/img/logoIIt.png" type="image/png" />
            <!-- Font Awesome -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
            <!-- Google Fonts Roboto -->
            <link
              rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
            />
            <!-- MDB -->
            <link rel="stylesheet" href="assets/css/mdb.min.css" />
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
           
            <button
              class="navbar-toggler"
              type="button"
              data-mdb-toggle="collapse"
              data-mdb-target="#navbarNav"
              aria-controls="navbarNav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse row justify-content-between" id="navbarNav"> 
              
                <div class="col-9">
                  <ul class="navbar-nav ">
                      
                      <li class="nav-item">
                        <a class="nav-link " aria-current="page"  href="./gradeController?action=getAll">Liste des Rôles</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link " href="./NiveauController?action=getAll">Liste des utilisateurs</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link " href="./EnseignantController?action=getAll">liste des Enseignants</a>
                      </li>                   
                  </ul>
                </div>
                <div class="col-2  d-flex justify-content-end m-2 ">
                  <a type="button" class="btn btn-danger ml-auto" href="./logout">Déconnectez</a>
                </div>
              
            </div>
          </div>
        </nav>
	
		<h1 class="text-center mt-5">Liste des utilisateurs</h1>
        
        <div class="row  px-5 my-3" >
            <div class="col-3 " >
                  <a type="button" class="btn btn-warning " href="./menu.jsp"> Retour au menu</a>
                  
               
            </div>
            
            <div class="col-6">
                
            </div>
            
            <div class="col-3  " >
                <a href="./ajouterUtilisateur.jsp" style="float:right" class="btn btn-success " > Ajouter </a>
            </div>
            
        </div>
        
        <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">#</th>
              <th>Prenom.</th>
                <th>Nom.</th>
                <th>Adresse.</th>
                <th>Email.</th>
                <th>Phone.</th>
                <th>Role.</th>              
    </tr>
  </thead>
  <tbody>
     <%
              
                RoleDAO ndao = new RoleDAO();
                UtilisateurDAO edao = new UtilisateurDAO ();
                
                List<Utilisateur> list_u = (List<Utilisateur>) request.getAttribute("listutilisateur");
                                
                int i = 0;
                RoleDAO dao = new RoleDAO();
                for (utilisateur a : list_u) {
                	Role d = ddao.getRoleByID(a.getId_departement());
                    Utilisateur e = edao.getUtilisateurByID(a.getId_Utilisateur());
                    i++;
                    out.print("<tr><td>" + i +"</td><td>"+a.getPrenom() + "</td><td>"+a.getNom() + "</td><td>"+a.getAdresse() + "</td><td>"+a.getEmail() + "</td><td>"+d.getPhone() + "</td><td>"+n.getPhone()+ "</td><td>"+e.getRole() + "</td><td><a class='btn btn-danger mx-1' href=\"./AdminController?action=remove&id="+a.getId()+"\">Supprimer</a><a class='btn btn-primary mx-1' href=\"./AdminController?action=edit&id="+a.getId()+"\">Modifier</a></td></tr>");
    
                }
            %>
     
  </tbody>
  </table>
</body>
</html>