<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Digimon</title>
</head>
<body>
	<div align="center">
		<h2>Edit Digimon</h2>
		<form:form action="saveDigimon" method="post" modelAttribute="digimon">
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
					<td><form:radiobuttons path="evo" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form:form>
		<a href="homeAllenatore">Torna alla home</a>
	</div>
</body>
</html>