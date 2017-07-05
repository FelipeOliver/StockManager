package com.stockmanager.entities;

import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Venda {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private Calendar dataVenda;
	private Double valorTotal;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Produto> produtos;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Calendar getDataVenda() {
		return dataVenda;
	}
	public void setDataVenda(Calendar dataVenda) {
		this.dataVenda = dataVenda;
	}
	public Double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}
}