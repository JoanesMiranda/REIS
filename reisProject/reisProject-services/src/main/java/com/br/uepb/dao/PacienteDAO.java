package com.br.uepb.dao;

import java.util.List;

import org.hibernate.Session;

import com.br.uepb.model.PacienteDomain;
import com.br.uepb.model.PerfilDomain;

import conexaoBD.HibernateUtil;

public class PacienteDAO {
	
private Session sessaoAtual;
	
	public PacienteDAO(){
		
	}
	
	/**
	 * Salva ou atualiza paciente
	 * @param paciente Sem o ID: Salvar, com ID: atualiza
	 */
	public void salvaPerfil(PacienteDomain paciente){
		SessaoAtual().beginTransaction();
		if(ehNovoUsuario(paciente)){
			SessaoAtual().save(paciente);
		}
		else{
			SessaoAtual().update(paciente);
		}
		SessaoAtual().getTransaction().commit();
		SessaoAtual().close();
	}
	
	public void excluiPaciente(PacienteDomain perfil){
		SessaoAtual().delete(perfil);
		SessaoAtual().close();
	}
	
	public PacienteDomain obtemPaciente(int idPaciente){
		PacienteDomain paciente = (PacienteDomain)SessaoAtual().get(PacienteDomain.class, idPaciente);
		SessaoAtual().close();
		return paciente;
	}
	
	@SuppressWarnings("unchecked")
	public List<PacienteDomain> listaPacientes(){
		
		List<PacienteDomain> pacientes = 
				(List<PacienteDomain>)SessaoAtual().createQuery("from PacienteDomain").list();
		
		
		SessaoAtual().close();
		return pacientes;
	}
	
	private Session SessaoAtual(){
		if (sessaoAtual == null || !sessaoAtual.isOpen()){
			sessaoAtual = HibernateUtil.getSessionFactory().openSession();
		}
		return sessaoAtual;
	}
	
	private boolean ehNovoUsuario(PacienteDomain perfil){
		if(perfil.getId() > 0){
			return false;
		}
		else{
			return true;
		}
	}

}
