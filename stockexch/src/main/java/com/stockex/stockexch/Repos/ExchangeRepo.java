package com.stockex.stockexch.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.stockex.stockexch.Entities.Exchange;

public interface ExchangeRepo extends JpaRepository<Exchange, Integer> {

    @Query("DELETE from Exchange WHERE exchange_ID = :exchange_ID")
    public int deleteExchangeByID(@Param("exchange_ID") int iD);
}