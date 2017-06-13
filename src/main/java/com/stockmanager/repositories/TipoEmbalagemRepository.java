package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.TipoEmbalagem;

@Repository
public interface TipoEmbalagemRepository extends CrudRepository<TipoEmbalagem, Long>{

}
