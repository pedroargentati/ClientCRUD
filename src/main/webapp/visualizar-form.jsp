<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.dao.ClienteDAOBD, br.com.fiap.model.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="./images/editar-page-icon.png" type="image/png" />
<meta charset="ISO-8859-1">
<title>Cliente | Edição</title>
</head>
<body>

	<header>

		<nav>
			<ul class="header-nav">
				<li><a href="index.jsp">Voltar para Clientes</a></li>
			</ul>
		</nav>

	</header>

	<form id="form-contact" action="/Sprint4POO/alterar" method="POST">
		<h2 class="contact-title">Visualização dos dados</h2>
		<%
		Integer id_cliente = Integer.valueOf(request.getParameter("id_cliente"));
		ClienteVo cliente = new ClienteDAOBD().obterClientePorChave(id_cliente);
		%>
		<div class="center">

			<fieldset>

				<div class="hidden">
					<input type="hidden" name="id_cliente" id="id_cliente" readonly value="<%= cliente.getId_cliente()%>">
				</div>
				
				<div class="name">
					<label for="nome_cliente">Nome completo: </label>
					<input type="text" name="nome_cliente" id="nome_cliente" readonly value="<%= cliente.getNome_cliente() %>">
				</div>

				<div class="email">
					<label for="email">Email: </label> 
					<input type="email" name="email" id="email" readonly value="<%= cliente.getEmail() %>">
				</div>

				<div class="logradouro">
					<label for="logradouro">Logradouro: </label>
					<input type="text" name="logradouro" id="logradouro"  maxlength="50" readonly value="<%= cliente.getLogradouro() %>">
				</div>

				<div class="complemento">
					<label for="complemento">Complemento: </label>
					<input type="text" name="complemento" id="complemento" maxlength="15" readonly value="<%= cliente.getComplemento() %>">
				</div>

				<div class="cep">
					<label for="cep">CEP: </label> <input
						type="number" name="cep" id="cep" maxlength="8" readonly value="<%= cliente.getCep()%>">
				</div>

				<div class="uf">
					<label for="uf">UF: </label> <input
						type="text" name="uf" id="uf"  maxlength="2" readonly value="<%= cliente.getUf() %>">
				</div>

				<div class="tp_cliente">
					<label for="tp_cliente">Tipo Cliente: </label> 
					<input type="text" name="tp_cliente" id="tp_cliente" maxlength="2" readonly value="<%=cliente.getTp_cliente() %>">
				</div>

				<br>

			</fieldset>

		</div>

	</form>

</body>
</html>