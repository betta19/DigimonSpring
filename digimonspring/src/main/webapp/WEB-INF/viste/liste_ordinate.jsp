<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html >
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon Sorted</title>
</head>
<body>
<br> <p class="text-center"> <a href="homeAllenatore">Torna alla home</a> </p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm">
			<br>
			<h3>Ordinamento per attacco</h3>
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
						<c:forEach items="${listaDigimonAttacco}" var="digimon">
							<tr>
								<td>${digimon.id}</td>
								<td>${digimon.nome}</td>
								<td>${digimon.hp}</td>
								<td>${digimon.atk}</td>
								<td>${digimon.def}</td>
								<td>${digimon.res}</td>
								<td>${digimon.evo}</td>

							</tr>
						</c:forEach>
					</table>
					<br>
					<h3>Ordinamento per difesa</h3>
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
						<c:forEach items="${listaDigimonDifesa}" var="digimon">
							<tr>
								<td>${digimon.id}</td>
								<td>${digimon.nome}</td>
								<td>${digimon.hp}</td>
								<td>${digimon.atk}</td>
								<td>${digimon.def}</td>
								<td>${digimon.res}</td>
								<td>${digimon.evo}</td>

							</tr>
						</c:forEach>
					</table>
				</div>
			<div class="col-sm">
			<br>
			<h3>Ordinamento per resistenza</h3>
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
					<c:forEach items="${listaDigimonResistenza}" var="digimon">
						<tr>
							<td>${digimon.id}</td>
							<td>${digimon.nome}</td>
							<td>${digimon.hp}</td>
							<td>${digimon.atk}</td>
							<td>${digimon.def}</td>
							<td>${digimon.res}</td>
							<td>${digimon.evo}</td>

						</tr>
					</c:forEach>
				</table>
				<br>
				<h3>Ordinamento per evoluzione</h3>
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
					<c:forEach items="${listaDigimonEvoluzione}" var="digimon">
						<tr>
							<td>${digimon.id}</td>
							<td>${digimon.nome}</td>
							<td>${digimon.hp}</td>
							<td>${digimon.atk}</td>
							<td>${digimon.def}</td>
							<td>${digimon.res}</td>
							<td>${digimon.evo}</td>

						</tr>
					</c:forEach>

				</table>
				</div>
			</div>
		</div>
</body>
</html>