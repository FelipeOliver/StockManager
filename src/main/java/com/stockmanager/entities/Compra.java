package com.stockmanager.entities;

import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Compra {

	@Id @GeneratedValue
	private Long id;
	private Double valorTotal;
	private Calendar dataCompra;

	@ManyToMany(cascade = CascadeType.ALL)
	private List<Produto> produtos;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}
	public Calendar getDataCompra() {
		return dataCompra;
	}
	public void setDataCompra(Calendar dataCompra) {
		this.dataCompra = dataCompra;
	}
}
