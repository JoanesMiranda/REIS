package com.br.uepb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class MedicaoOximetroDomain {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "paciente_id")
	private PacienteDomain paciente;
	
	@Column(name = "spo2")
	private double spo2;
	
	@Column(name = "taxa_pulso")
	private double taxaPulso;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public PacienteDomain getId_Paciente() {
		return paciente;
	}
	public void setId_Paciente(PacienteDomain paciente) {
		this.paciente = paciente;
	}
	public double getSpo2() {
		return spo2;
	}
	public void setSpo2(double spo2) {
		this.spo2 = spo2;
	}
	public PacienteDomain getPaciente() {
		return paciente;
	}
	public void setPaciente(PacienteDomain paciente) {
		this.paciente = paciente;
	}
	public double getTaxaPulso() {
		return taxaPulso;
	}
	public void setTaxaPulso(double taxaPulso) {
		this.taxaPulso = taxaPulso;
	}
	
}
