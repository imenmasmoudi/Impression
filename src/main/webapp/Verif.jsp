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
<jsp:useBean id="currentUser" class="tn.iit.authentification.model.Utilisateur" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="currentUser"/>
Vous avez saisi : <br>
&nbsp;&nbsp;&nbsp;Nom : ${currentUser.nom }
<br>
&nbsp;&nbsp;&nbsp;Prénom : ${currentUser.prenom } 
<br>
&nbsp;&nbsp;&nbsp;Login : <c:out value="${currentUser.login } " default="Inconnu"></c:out> 
<br>
&nbsp;&nbsp;&nbsp;Mot de passe : ${currentUser.pwd } 
<br>
<a href="inscription.jsp">Correction</a>
<a href="InscriptionController">Validation</a>
</body>
</html>