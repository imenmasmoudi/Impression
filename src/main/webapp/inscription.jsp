<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:useBean id="currentUser" class="tn.iit.authentification.model.Utilisateur" scope="session"></jsp:useBean>
<body>
	<form method="post" action="Verif.jsp">
		<table>
			<tr>
				<td>Nom : </td>
				<td><input name="nom" value="<jsp:getProperty property="nom" name="currentUser"/>"></td>
			</tr>
			<tr>
				<td>Prenom : </td>
				<td><input name="prenom" value="<jsp:getProperty property="prenom" name="currentUser"/>"></td>
			</tr>
			<tr>
				<td>Login : </td>
				<td><input name="login" value="<jsp:getProperty property="login" name="currentUser"/>"></td>
			</tr>
			<tr>
				<td>Mot de passe : </td>
				<td><input type="password" name="pwd" value="<jsp:getProperty property="pwd" name="currentUser"/>"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Valider"></td>
				<td><a href="inscription.jsp">Inscription</a>
			</tr>
		</table>
	</form>
</body>
</html>