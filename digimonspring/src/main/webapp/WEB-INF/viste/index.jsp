<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon</title>
</head>
<body>
	<div align="left">
		<h2>Manager Digimon</h2>
		<h3>
			<a href="newDigimon">New Digimon</a>
		</h3>
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
			<c:forEach items="${listaDigimon}" var="digimon">
				<tr>
					<td>${digimon.id}</td>
					<td>${digimon.nome}</td>
					<td>${digimon.hp}</td>
					<td>${digimon.atk}</td>
					<td>${digimon.def}</td>
					<td>${digimon.res}</td>
					<td>${digimon.evo}</td>

					<td><a href="editDigimon?id=${digimon.id}">Edit</a> <a
						href="deleteDigimon?id=${digimon.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="right">
		<h2>Manager Allenatore</h2>
		<h3>
			<a href="newAllenatore">New Allenatore</a>
		</h3>
		<table border="1" cellpadding="5">
			<tr>
				<th>ID</th>
				<th>Nome</th>
			</tr>
			<c:forEach items="${listaAllenatore}" var="allenatore">
				<tr>
					<td>${allenatore.id}</td>
					<td>${allenatore.nome}</td>
					<td><a href="addDigimon?idAllenatore=${allenatore.id}">Add Digimon</a> <a
						href="editAllenatore?id=${allenatore.id}">Edit</a> <a
						href="deleteAllenatore?id=${allenatore.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>