package com.stockex.stockexch.Repos;

import com.stockex.stockexch.Entities.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface Order_bookRepo extends JpaRepository<Order_book,Integer>{
    @Query("DELETE from Order_book WHERE order_book_ID = :order_book_ID")
    public int deleteOrder_bookByID(@Param("order_book_ID") int iD);
}