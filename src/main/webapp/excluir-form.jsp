<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.dao.ClienteDAOBD, br.com.fiap.model.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" href="./images/excluir-page-icon.png" type="image/png" />
<title>Exclusão | Cliente</title>

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

body {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.center {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background-color: #eeeeee;
	margin: 0 auto;
	width: 540px;
	height: 400px;
	margin-top: 8rem;
	border-radius: 10px;
	box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
}

.buttun-send {
	width: 80%;
	display: flex;
	margin-bottom: 1.5rem;
	justify-content: space-around;
}

.btn1 {
	border: none;
	border-radius: 4px;
	color: #fff;
	padding: 1rem 2.15rem;
	background-color: #388e3c;
	font-size: 1.5rem;
	text-align: center;
}

.btn1:hover {
	background-color: #4caf50;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

.btn2 {
	border: none;
	border-radius: 4px;
	color: #fff;
	padding: 1rem 2rem;
	background-color: #d32f2f;
	font-size: 1.2rem;
	text-align: center;
}

.btn2:hover {
	background-color: #e53935;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

a {
	text-decoration: none;
	color: #fff;
}

h2 {
	margin-bottom: 1rem;
}

h3 {
	margin-bottom: 2rem;
	font-weight: normal;
}

button {
	cursor: pointer;
}

span {
	font-weight: bold;
	font-size: 1.1rem;
	text-decoration: underline;
}

</style>

</head>
<body>

	<div class="center">
		<%
		Integer id_cliente = Integer.valueOf(request.getParameter("id_cliente"));
		ClienteVo cliente = new ClienteDAOBD().obterClientePorChave(id_cliente);
		%>
		<h2>Exclusão de Cliente</h2>
		<h3>Você realmente deseja excluir <span><%= cliente.getNome_cliente() %></span> ?</h3>

		<div class="buttun-send">
			<form action="/Sprint4POO/excluir" method="POST">
				<div class="hidden">
					<input type="hidden" name="id_cliente" id="id_cliente" required value="<%=cliente.getId_cliente()%>">
				</div>
				<button class="btn1" type="submit" name="submit">Excluir</button> 
			</form>
			 <a href="index.jsp"><button class="btn2" type="submit" name="action">Cancelar</button></a>
		</div>
	</div>

</body>
</html>