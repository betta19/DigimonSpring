<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Digimon</title>
</head>
<body>
	<div align="left">
		<h2>Add digimon</h2>
		<form:form action="addToAllenatore" method="post"
			modelAttribute="digimon">
			<h3>Ciao ${allenatore.nome}, scegli il tuo Digimon:</h3>
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td>${digimon.id}<form:hidden path="id" />
					</td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><form:input path="nome" /></td>
				</tr>
				<tr>
					<td>HP:</td>
					<td><form:input path="hp" /></td>
				</tr>
				<tr>
					<td>Attacco:</td>
					<td><form:input path="atk" /></td>
				</tr>
				<tr>
					<td>Difesa:</td>
					<td><form:input path="def" /></td>
				</tr>
				<tr>
					<td>Resistenza:</td>
					<td><form:input path="res" /></td>
				</tr>
				<tr>
					<td>Evoluzione:</td>
					<td><form:input path="evo" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Aggiungi"></td>
				</tr>
			</table>
		</form:form>
	</div>

	<div align="left">
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