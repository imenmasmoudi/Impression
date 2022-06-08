<%@page import="tn.iit.authentification.model.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Utilisateur u = (Utilisateur) session.getAttribute("currentUser"); %>
Bienvenu Mr/Mme : <%=u.getNom() %> <%=u.getPrenom() %>
<br>Vos paramètres sont  : 
<br>&nbsp;&nbsp;&nbsp;Login : <%=u.getLogin() %>
<br>&nbsp;&nbsp;&nbsp;Mot de passe  : <%=u.getPwd() %>
<br>
<h2>Liste des utilisaturs : </h2>
<table>
<tr><th>Nom</th><th>Prenom</th><th>Login</th><th>Mot de pass</th></tr>
<c:forEach items="${listeUsers }" var="user">
<tr><td>${user.nom }</td><td>${user.prenom }</td><td>${user.login }</td><td>${user.pwd }</td></tr>
</c:forEach>
</table>
<br><a href=Disconnect>Disconnect</a> 
</body>
</html>