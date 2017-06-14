package com.stockmanager.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockmanager.entities.CodigoDeBarras;
import com.stockmanager.repositories.CodigoDeBarrasRepository;

@Service
public class CodigoDeBarrasService {

	@Autowired
	private CodigoDeBarrasRepository codigoDeBarrasRepository;
	
	public CodigoDeBarras save(CodigoDeBarras codigoDeBarras){
		CodigoDeBarras saved = this.codigoDeBarrasRepository.save(codigoDeBarras);
		return saved;
	}
	
	public void delete(CodigoDeBarras codigoDeBarras){
		this.codigoDeBarrasRepository.delete(codigoDeBarras);
	}
}
