<%@page import="tn.iit.authentification.model.Cours"%>
<%@page import="tn.iit.authentification.dao.CoursDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cours</title>
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
       
        <h1 class="text-center mt-5">Liste des Cours</h1>
        
        
        
        <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">#</th>
                <th>ID</th>
                <th>Nom</th>
                <th>Nombre Etudiant</th>
    </tr>
  </thead>
  <tbody>
     <%
               
                List<Cours> list_cours = (List<Cours>) request.getAttribute("listecours");
                                
                int i = 0;
                
                for (Cours a : list_cours) {
                    i++;
                    out.print("<tr><td>" + i +"</td><td>"+a.getId() + "</td><td>"+a.getNom() + "</td><td>"+a.getNbrEtudiant() + "</td><td><a class='btn mx-1' href=\"./CoursController?action=ajoutPdf&id="+a.getId()+"\">Ajouter PDF</a></tr></td>");
    
                }
            %>
     
  </tbody>
  </table>
        
        
         <!-- MDB -->
    <script type="text/javascript" src="assets/js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
    </body>
</html>
