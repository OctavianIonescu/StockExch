package com.stockex.stockexch.Service;

import com.stockex.stockexch.Entities.Exchange;

public interface ExchangeService {
    public Exchange addExchange(Exchange exchange);
    public int deleteExchangeByID(int ID);
    public void deleteExchange(Exchange exchange);
}
