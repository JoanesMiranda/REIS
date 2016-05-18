package com.br.uepb.business;

import com.br.uepb.dao.LoginDAO;
import com.br.uepb.dao.PacienteDAO;
import com.br.uepb.model.LoginDomain;
import com.br.uepb.model.PacienteDomain;

public class TestesBusiness {

	public static void main(String[] args) {
		//Verifica se salva as medicoes
		MedicoesBusiness medicoesBusines = new MedicoesBusiness();
		
		/*
		PacienteDomain paciente = new PacienteDomain();
		//paciente.setId(1);
		paciente.setNome("luana janaina");
		paciente.setSexo("feminino");
		paciente.setCidade("Cidade");
		paciente.setEndereco("Endereco");
		paciente.setTelefoneCasa("88888888");
		
		//PacienteDAO pacienteDAO = new PacienteDAO();
		//pacienteDAO.salvaPaciente(paciente);
		
		LoginDomain login = new LoginDomain();
		login.setLogin("luana");
		login.setSenha("123");
		login.setPaciente(paciente);		
		LoginDAO loginDAO = new LoginDAO();
		loginDAO.salvaLogin(login);
		*/
		
		LoginDomain login = new LoginDomain();
		login.setLogin("luana");
		login.setSenha("123");
		
		SessaoBusiness.setLoginDomain(login);
		
		//Deixei aqui pra vc Luana :)
		//String xml = "C:/Users/Luana/workspace/Leitura_XML/arquivos_xml/Oximetro XML de medicoes1.xml";
		//String xml = "E:/Workspace/luna/Leitura_XML/arquivos_xml/pressao.xml";
		
		//medicoesBusines.medicaoOximetro(xml);
		//System.out.println("Leitura Oximetro");
		
		String xml = "C:/Users/Luana/workspace/Leitura_XML/arquivos_xml/Medidor de pressão XML de medicoes.xml";		
		medicoesBusines.medicaoPressao(xml);
		System.out.println("Leitura Pressão");

	}

}
