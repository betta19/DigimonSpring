<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon List</title>
</head>
<body>
	<div align="left">
		<h3>Ciao ${allenatore.nome}, ecco la tua lista Digimon:</h3>
		<table border="1" cellpadding="5">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>HP</th>
				<th>Attacco</th>
				<th>Difesa</th>
				<th>Resistenza</th>
				<th>Evoluzione</th>
			</tr>
			<c:forEach items="${digimonAllenatore}" var="digimon">
				<tr>
					<td>${digimon.id}</td>
					<td>${digimon.nome}</td>
					<td>${digimon.hp}</td>
					<td>${digimon.atk}</td>
					<td>${digimon.def}</td>
					<td>${digimon.res}</td>
					<td>${digimon.evo}</td>

					<td><a href="editDigimon?id=${digimon.id}">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<a href="homeAllenatore">Torna alla home</a>
	</div>
</body>
</html>