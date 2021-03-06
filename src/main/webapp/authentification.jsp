<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- MDB icon -->
            <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
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
</head>
<body>
<%
if (request.getAttribute("erreur") != null) {
	out.append(request.getAttribute("erreur").toString());
}
%>
<div class="row  my-5">
  <div class="col-4"></div>
 <div class="card col-4">
                <div class="card-body">
                  <h5 class="card-title">Connectez-vous</h5>
                  <form action="AuthController" method="POST">
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                      <input  name="login" type="text" id="form1Example1" class="form-control" />
                      <label  class="form-label" for="form1Example1">Login</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-4">
                      <input name="password" type="password"  id="form1Example2" class="form-control" />
                      <label class="form-label" for="form1Example2">Mot de passe</label>
                    </div>

                    <!-- Submit button -->
                    <input type="submit" value="connexion" class="btn btn-primary btn-block">
                    <td><a href="inscription.jsp">Inscription</a>
                  </form>
              </div>
              </div>
  <div class="col-4"></div>
	
</body>
</html>

