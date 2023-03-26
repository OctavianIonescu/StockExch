package com.stockex.stockexch.Repos;

import com.stockex.stockexch.Entities.*;

import org.springframework.data.jpa.repository.JpaRepository;


public interface Order_bookRepo extends JpaRepository<Order_book,Integer>{
    
}
