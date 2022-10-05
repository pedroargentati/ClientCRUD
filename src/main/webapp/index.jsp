<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.dao.ClienteDAOBD, br.com.fiap.model.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
<link rel="shortcut icon" href="./images/page-icon.png" type="image/png" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
<title>Sprint 4 | POO</title>

<style>
.buttun-send {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 2rem;
}

table {
	width: 80%;
	margin: 1rem auto;
}

.title {
	text-align: center;
	margin: 2rem auto;
}

a {
	text-decoration: none;
	color: #fff;
}

h4 {
	text-align: center;
}


</style>

</head>
<body>

	<h2 class="title" >Clientes</h2>

	<%
	List<ClienteVo> listaClientes = new ClienteDAOBD().obterListaCliente();
	request.setAttribute("listaClientes", listaClientes);
	%>

	<table class="bordered striped centered highlight responsive-table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome do Cliente</th>
				<th>Email</th>
				<th>Tipo de Cliente</th>
				<th>Visualizar</th>
				<th>Editar</th>
				<th>Excluir</th>
			</tr>
		</thead>
		

		<c:forEach items="${listaClientes}" var="cliente">
		<tbody>
				<tr>
				<td>${cliente.getId_cliente()}</td>
				<td>${cliente.getNome_cliente()}</td>
				<td>${cliente.getEmail()}</td>
				<td>${cliente.getTp_cliente()}</td>
				<td><a href="visualizar-form.jsp?id_cliente=${cliente.getId_cliente()}"><button style="border: none" type="submit"><img alt="" src="images/eye-solid.svg" style="width: 23px; height: 23px" /></button></a></td>
				<td><a href="editar-form.jsp?id_cliente=${cliente.getId_cliente()}"><img alt="" src="images/pen-to-square-regular.svg" style="width: 23px; height: 23px" /></a></td>
				<td><a href="excluir-form.jsp?id_cliente=${cliente.getId_cliente()}"><button style="border: none" type="submit"><img alt="" src="images/user-xmark-solid.svg" style="width: 23px; height: 23px" /></button></a></td>
			</tr>
		</tbody>
		</c:forEach>
			
	</table>
	<% if (listaClientes == null || listaClientes.isEmpty()) { %> <h4>Nenhum registro foi encontrado.</h4> <% } %>
	<br>
	<div class="buttun-send">
	   <a href="incluir-form.jsp"><button class="btn-large waves-effect waves-light green darken-1 scale-transition scale-out" type="submit" name="action" >Adicionar cliente<i class="material-icons right">send</i></button> </a>
	</div>
 

</body>
</html>