package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.Categoria;

@Repository
public interface CategoriaRepository extends CrudRepository<Categoria, Long>{

}
