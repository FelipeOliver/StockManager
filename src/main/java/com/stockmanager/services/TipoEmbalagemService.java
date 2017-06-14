package com.stockmanager.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockmanager.entities.TipoEmbalagem;
import com.stockmanager.repositories.TipoEmbalagemRepository;

@Service
public class TipoEmbalagemService {

	@Autowired
	private TipoEmbalagemRepository tipoEmbalagemRepository;
	
	public List<TipoEmbalagem> findAll(){
		return (List<TipoEmbalagem>) this.tipoEmbalagemRepository.findAll();
	}
	
	public TipoEmbalagem save(TipoEmbalagem tipoEmbalagem){
		TipoEmbalagem saved = this.tipoEmbalagemRepository.save(tipoEmbalagem);
		return saved;
	}
	
	public void delete(TipoEmbalagem tipoEmbalagem){
		this.tipoEmbalagemRepository.delete(tipoEmbalagem);
	}
}
