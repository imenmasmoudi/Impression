<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if (request.getAttribute("erreur") != null) {
	out.append(request.getAttribute("erreur").toString());
}
%>
	<form method="post" action="AuthController">
		<table>
			<tr>
				<td>Login : </td>
				<td><input name="login"></td>
			</tr>
			<tr>
				<td>Mot de passe : </td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Valider"></td>
				<td><a href="inscription.jsp">Inscription</a>
			</tr>
		</table>
	</form>
</body>
</html>