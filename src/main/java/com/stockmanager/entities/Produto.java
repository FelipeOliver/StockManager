package com.stockmanager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Produto {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Long codigo;

	private String descricao;

	@ManyToOne(targetEntity = Categoria.class, optional=true)
	@JoinColumn(name = "categoria_id", referencedColumnName="id", nullable=true)
	private Categoria categoria;

	@ManyToOne(targetEntity = TipoEmbalagem.class, optional=true)
	@JoinColumn(name = "tipo_embalagem_id", referencedColumnName="id", nullable=true)	
	private TipoEmbalagem tipoDeEmbalagem;

	private Double valorVenda;

	public Long getCodigo() {
		return codigo;
	}
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public TipoEmbalagem getTipoDeEmbalagem() {
		return tipoDeEmbalagem;
	}
	public void setTipoDeEmbalagem(TipoEmbalagem tipoDeEmbalagem) {
		this.tipoDeEmbalagem = tipoDeEmbalagem;
	}
	public Double getValorVenda() {
		return valorVenda;
	}
	public void setValorVenda(Double valorVenda) {
		this.valorVenda = valorVenda;
	}
}