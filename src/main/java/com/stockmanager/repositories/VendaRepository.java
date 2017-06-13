package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.Venda;

@Repository
public interface VendaRepository extends CrudRepository<Venda, Long>{

}
