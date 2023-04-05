package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.stockex.stockexch.Entities.*;

import jakarta.transaction.Transactional;

@Repository
public interface OrdersRepo extends JpaRepository<Orders, Integer> {

    @Query("DELETE from Orders WHERE order_ID = :order_ID")
    int deleteOrderByID(@Param("order_ID") int iD);

    @Query("UPDATE Orders SET status = 'FULFILLED' WHERE order_ID = :order_ID")
    @Transactional
    @Modifying
    int setFulfilledByID(@Param("order_ID") int iD);

    @Query("UPDATE Orders SET amount = :amount WHERE order_ID = :order_ID")
    @Transactional
    @Modifying
    void setAmountByID(@Param("order_ID") int order_ID, @Param("amount") int amount);

}
