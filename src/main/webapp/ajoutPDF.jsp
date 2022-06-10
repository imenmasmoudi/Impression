<%@page import="tn.iit.authentification.model.Cours"%>
<%@page import="tn.iit.authentification.dao.CoursDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter PDF</title>
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
        
                     <div class="row my-5">
                    <div class="col-4"></div>
                    <div class="col-4">  
                         <div class="card">
                    <div class="card-body">
                       <h3>Ajouter PDF</h3>
                                  <form action="CoursController" method="POST">
						<%
						int idCour = Integer.valueOf(request.getAttribute("idCours").toString());
						                      SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

										String date = formatter.format(new Date());
						%>
						<input type="hidden" name="action" value="ajoutImpression"/>
                    <div class="row mb-4">
                        
                        <div class="form-outline my-3">
								<input type="file" name="file" size="50" /> <br /> 
								<input type="submit" value="Upload File" /> 
                          <label class="form-label" for="form6Example1">File</label>
                        </div>
                          
                        <div class="form-outline my-3">
                          <input  type="number" name="id" value="<%= idCour%>" class="form-control" />
                        
                          <label class="form-label" for="form6Example2">Cours</label>
                        </div>
                          
                        <div class="form-outline my-3">
                          <input type="number" name="nbr_copie" class="form-control" />
                          <label class="form-label" for="form6Example2">Nombre Copie</label>
                        </div>
                         <div class="form-outline my-3">
                          <input type="date" name="rec_date" value="<%= date%>">
                          <label class="form-label" for="form6Example2">Date reception</label>
                        </div>
                          
                    <!-- Submit button -->
                    <input type="submit" value="Ajouter" name="ajoutImpression" class="btn btn-primary btn-block mb-4">
                  </form>
                    </div>
                  </div></div>
                    <div class="col-4"></div>
                  </div>
                                     
                             <!-- MDB -->
    <script type="text/javascript" src="assets/js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
    </body>
</html>
