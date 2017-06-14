package com.stockmanager.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockmanager.entities.Categoria;
import com.stockmanager.repositories.CategoriaRepository;

@Service
public class CategoriaService {

	@Autowired
	private CategoriaRepository categoriaRepository;
	
	public List<Categoria> findAll(){
		return (List<Categoria>) this.categoriaRepository.findAll();
	}
	
	public Categoria save(Categoria categoria){
		Categoria saved = this.categoriaRepository.save(categoria);
		return saved;
	}
	
	public void delete(Long id){
		this.categoriaRepository.delete(id);
	}
}