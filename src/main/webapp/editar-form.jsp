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
		<h2 class="contact-title">Alteração de dados</h2>
		<%
		Integer id_cliente = Integer.valueOf(request.getParameter("id_cliente"));
		ClienteVo cliente = new ClienteDAOBD().obterClientePorChave(id_cliente);
		%>
		<div class="center">

			<fieldset>

				<div class="hidden">
					<input type="hidden" name="id_cliente" id="id_cliente" required value="<%= cliente.getId_cliente()%>">
				</div>
				
				<div class="name">
					<label for="nome_cliente">Nome completo: <span class="obg">*</span></label>
					<input type="text" name="nome_cliente" id="nome_cliente" required value="<%= cliente.getNome_cliente() %>">
				</div>

				<div class="email">
					<label for="email">Email:</label> 
					<input type="email" name="email" id="email" required readonly value="<%= cliente.getEmail() %>">
				</div>

				<div class="logradouro">
					<label for="logradouro">Logradouro: <span class="obg">*</span></label>
					<input type="text" name="logradouro" id="logradouro"  maxlength="50" required value="<%= cliente.getLogradouro() %>">
				</div>

				<div class="complemento">
					<label for="complemento">Complemento: <span class="obg">*</span></label>
					<input type="text" name="complemento" id="complemento" maxlength="15" required value="<%= cliente.getComplemento() %>">
				</div>

				<div class="cep">
					<label for="cep">CEP: <span class="obg">*</span></label> <input
						type="number" name="cep" id="cep" maxlength="8" required value="<%= cliente.getCep()%>">
				</div>

				<div class="uf">
					<label for="uf">UF: <span class="obg">*</span></label> <input
						type="text" name="uf" id="uf"  maxlength="2" required value="<%= cliente.getUf() %>">
				</div>

				<fieldset style="margin-bottom: 1rem">
					<legend>
						Tipo do cliente: <span class="obg">*</span>
					</legend>
					<select name="tp_cliente" id="tp_cliente">
						<option value="PF">Pessoa Fisica (PF)</option>
						<option value="PJ">Pessoa Jurídica (PJ)</option>
					</select>
				</fieldset>

				<br>
				<hr>
				<p class="form-p"><span class="obg">*</span> campo obrigatório</p>

				<button name="submit" type="submit" id="contact-btn" style="cursor: pointer;">Alterar</button>

			</fieldset>

		</div>

	</form>

</body>
</html>