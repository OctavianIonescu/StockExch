package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.stockex.stockexch.Entities.Order_book;
import com.stockex.stockexch.Entities.SellOrder;

public interface SellOrderRepo extends JpaRepository<SellOrder, Integer> {

    @Query("SELECT u FROM SellOrder u where u.order_book = :order_book")
    SellOrder findByOrderBook(@Param("order_book") Order_book order_book);

}
