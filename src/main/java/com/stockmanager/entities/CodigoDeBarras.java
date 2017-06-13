package com.stockmanager.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CodigoDeBarras {

	@Id
	private String codigo;
	
	@ManyToOne(targetEntity = Produto.class)
	@JoinColumn(name = "produto_codigo", referencedColumnName="codigo", nullable=true)	
	private Produto produto;

	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public Produto getProduto() {
		return produto;
	}
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
}
