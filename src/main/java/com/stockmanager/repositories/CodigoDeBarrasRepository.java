package com.stockmanager.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stockmanager.entities.CodigoDeBarras;

@Repository
public interface CodigoDeBarrasRepository extends CrudRepository<CodigoDeBarras, Long>{

}
