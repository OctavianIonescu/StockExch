package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stockex.stockexch.Entities.SORT;

@Repository
public interface SORTRepo extends JpaRepository<SORT,Integer>{
    
}
