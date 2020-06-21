<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digimon</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm">
				<h2>Manager Digimon</h2>
				<h4>
					<a href="newDigimon">Aggiungi un Digimon</a>
				</h4>
				<h4>
					<a href="ordinamento">Elenco Digimon Ordinati</a>
				</h4>

				Ecco la lista dei Digimon disponibili: <br>

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
						<c:if test="${digimon.assegnato == false}">
							<tr>
								<td>${digimon.id}</td>
								<td>${digimon.nome}</td>
								<td>${digimon.hp}</td>
								<td>${digimon.atk}</td>
								<td>${digimon.def}</td>
								<td>${digimon.res}</td>
								<td>${digimon.evo}</td>

								<td><a href="editDigimon?id=${digimon.id}">Edit</a> 
								</td>
								<td>
								<a href="deleteDigimon?id=${digimon.id}">Delete</a>
								</td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
			<div class="col-sm">
				<h2>Manager Allenatore</h2>
				<h4>
					<a href="newAllenatore">Aggiungi un Allenatore</a>
				</h4>
				<br>
				<br>
				Ecco la lista degli allenatori: <br>
				<table border="1" cellpadding="5">
					<tr>
						<th>ID</th>
						<th>Nome</th>
					</tr>
					<c:forEach items="${listaAllenatore}" var="allenatore">
						<tr>
							<td>${allenatore.id}</td>
							<td>${allenatore.nome}</td>
							<td><a href="addDigimon?idAllenatore=${allenatore.id}">Add
									Digimon</a></td>
							<td><a href="visualizzaListaDigimonAllenatore?idAllenatore=${allenatore.id}">Visualizza la tua lista Digimon</a></td>
							<td><a href="editAllenatore?id=${allenatore.id}">Edit</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>