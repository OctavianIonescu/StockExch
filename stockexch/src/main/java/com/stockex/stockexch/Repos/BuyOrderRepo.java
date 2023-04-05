package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.stockex.stockexch.Entities.BuyOrder;

import jakarta.transaction.Transactional;

public interface BuyOrderRepo extends JpaRepository<BuyOrder, Integer> {

    @Query("DELETE from BuyOrder WHERE order_ID = :order_ID")
    public int deleteOrderByID(@Param("order_ID") int iD);

    @Query("UPDATE BuyOrder SET status = 'FULFILLED' WHERE order_ID = :order_ID")
    @Transactional
    @Modifying
    public int setFulfilledByID(@Param("order_ID") int iD);

}
