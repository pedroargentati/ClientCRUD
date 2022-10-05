package br.com.fiap.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.dao.ClienteDAOBD;
import br.com.fiap.model.ClienteVo;

/**
 * Servlet implementation class ClienteExcluirServlet
 */
@WebServlet(urlPatterns="/excluir")
public class ClienteExcluirServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		ClienteDAOBD clienteDAO = new ClienteDAOBD();
		ClienteVo cliente = this.createVo(req);

		try {
			if (cliente != null) {
				clienteDAO.excluirCliente(cliente);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);
	}

	private ClienteVo createVo(HttpServletRequest req) {
		ClienteVo cliente = new ClienteVo();

		cliente.setId_cliente(Integer.valueOf(req.getParameter("id_cliente")));
		cliente.setId_cidade(1);
		cliente.setNome_cliente(req.getParameter("nome_cliente"));
		cliente.setEmail(req.getParameter("email"));
		cliente.setLogradouro(req.getParameter("logradouro"));
		cliente.setComplemento(req.getParameter("complemento"));
		cliente.setCep(req.getParameter("cep"));
		cliente.setUf(req.getParameter("uf"));
		cliente.setTp_cliente(req.getParameter("tp_cliente"));
		System.out.println(cliente);
		return cliente;
	}

	protected void fillForm(ClienteVo cliente, HttpServletRequest req) {
		req.setAttribute("nome_cliente", cliente.getNome_cliente());
		req.setAttribute("email", cliente.getEmail());
		req.setAttribute("logradouro", cliente.getLogradouro());
		req.setAttribute("complemento", cliente.getComplemento());
		req.setAttribute("cep", cliente.getCep());
		req.setAttribute("uf", cliente.getUf());
		req.setAttribute("tp_cliente", cliente.getTp_cliente());
	}

}
