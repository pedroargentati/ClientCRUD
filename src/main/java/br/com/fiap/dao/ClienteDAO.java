package br.com.fiap.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.fiap.model.ClienteVo;

public interface ClienteDAO {

	public List<ClienteVo> obterListaCliente() throws SQLException;
	public ClienteVo obterClientePorChave(Integer id_cli) throws SQLException;
	public void inserirCliente(ClienteVo cliente) throws SQLException;
	public void alterarCliente(ClienteVo clienteVo) throws SQLException;
	public void excluirCliente(ClienteVo clienteVo) throws SQLException;
	
}
