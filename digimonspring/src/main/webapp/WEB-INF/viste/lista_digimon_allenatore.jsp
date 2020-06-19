<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="right">
		<h2>Add digimon</h2>
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
		
	</div>
	


</body>
</html>