package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.Compra;

@Repository
public interface CompraRepository extends CrudRepository<Compra, Long>{

}
