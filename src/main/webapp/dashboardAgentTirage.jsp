<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="tn.iit.authentification.model.Impression"%>
    <%@page import="tn.iit.authentification.dao.ImpressionDAO"%>
    <%@page import="java.util.List"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

        
        
        
        <h1 class="text-center mt-5">liste des Demande</h1>
        
        
        
        <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">#</th>
      
                <th>User.</th>
                <th>nb copie.</th>
                <th>Cours.</th>
    </tr>
  </thead>
  <tbody>
     <%
                List<Impression> list = (List<Impression>) request.getAttribute("listedemande");

                int i = 0;
                ImpressionDAO id = new ImpressionDAO();
                //List<Enseignant> list2 = (List<Enseignant>) ed.getEnseignants();
                
                for (Impression a : list) {
                    i++;
                    out.print("<tr><td>" + i +"</td><td>"+a.getLibelle() + "</td><td>"+e.getPrenom()+" "+e.getNom() + "</td><td><a class='btn btn-danger mx-1' href=\"./DepartementController?action=remove&id="+a.getId()+"\">Supprimer</a><a class='btn btn-primary mx-1' href=\"./DepartementController?action=edit&id="+a.getId()+"\">Modifier</a></td></tr>");
    
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