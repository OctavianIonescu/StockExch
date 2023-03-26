package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stockex.stockexch.Entities.*;

public interface OrdersRepo extends JpaRepository<Orders,Integer>{
    
}
