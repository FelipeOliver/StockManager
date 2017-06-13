package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.Produto;

@Repository
public interface ProdutoRepository extends CrudRepository<Produto, Long>{

}
