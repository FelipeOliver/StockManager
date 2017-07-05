package com.stockmanager.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockmanager.entities.Produto;
import com.stockmanager.repositories.ProdutoRepository;

@Service
public class ProdutoService {

	@Autowired
	private ProdutoRepository produtoRepository;
	
	public Produto save(Produto produto){
		Produto saved = this.produtoRepository.save(produto);
		return saved;
	}
	
	public void delete(Long id){
		this.produtoRepository.delete(id);
	}

	public List<Produto> findAll() {
		return (List<Produto>) this.produtoRepository.findAll();
	}
}
