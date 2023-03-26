package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stockex.stockexch.Entities.Exchange;

public interface ExchangeRepo extends JpaRepository<Exchange,Integer>{
    
}
