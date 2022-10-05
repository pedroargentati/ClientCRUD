<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.dao.ClienteDAOBD, br.com.fiap.model.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="./images/incluir-page-icon.png" type="image/png" />
<meta charset="ISO-8859-1">
<title>Cliente | Inclusão</title>
</head>
<body>

	<header>

		<nav>
			<ul class="header-nav">
				<li><a href="index.jsp">Voltar para Clientes</a></li>
			</ul>
		</nav>

	</header>
	
	<form id="form-contact" action="/Sprint4POO/incluir" method="POST">
		<h2 class="contact-title">Cadastro de cliente</h2>

		<div class="center">

			<fieldset>

				<div class="name">
					<label for="nome_cliente">Nome completo: <span class="obg">*</span></label>
					<input type="text" name="nome_cliente" id="nome_cliente" placeholder="Ex: Pedro" required>
				</div>

				<div class="email">
					<label for="email">Email: <span class="obg">*</span></label> <input
						type="email" name="email" id="email"
						placeholder="exemplo@email.com" required>
				</div>

				<div class="logradouro">
					<label for="logradouro">Logradouro: <span class="obg">*</span></label>
					<input type="text" name="logradouro" id="logradouro"
						placeholder="Av Lins de Vasconcelos" maxlength="50" required>
				</div>

				<div class="complemento">
					<label for="complemento">Complemento: <span class="obg">*</span></label>
					<input type="text" name="complemento" id="complemento"
						placeholder="Apto 1" maxlength="15" required>
				</div>

				<div class="cep">
					<label for="cep">CEP: <span class="obg">*</span></label> <input
						type="number" name="cep" id="cep" placeholder="00000000"
						maxlength="8" required>
				</div>

				<div class="uf">
					<label for="uf">UF: <span class="obg">*</span></label> <input
						type="text" name="uf" id="uf" placeholder="SP" maxlength="2"
						required>
				</div>

				<fieldset style="margin-bottom: 1rem">
					<legend>
						Tipo do cliente: <span class="obg">*</span>
					</legend>
					<select name="tp_cliente" id="tp_cliente">
						<option value="" selected disabled hidden>Escolha uma opção</option>
						<option value="PF">Pessoa Fisica (PF)</option>
						<option value="PJ">Pessoa Jurídica (PJ)</option>
					</select>
				</fieldset>

				<hr>
				<p class="form-p">
					<span class="obg">*</span> campo obrigatório
				</p>

				<input type="checkbox" id="checkboxC" required> 
				<label for="checkboxC" id="ciente">Ciente</label>
				<button style="cursor: pointer;" name="submit" type="submit" id="contact-btn">Enviar</button>

			</fieldset>


		</div>

	</form>

</body>
</html>