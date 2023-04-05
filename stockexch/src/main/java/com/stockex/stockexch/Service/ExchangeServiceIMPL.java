package com.stockex.stockexch.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockex.stockexch.Entities.Exchange;
import com.stockex.stockexch.Repos.ExchangeRepo;

@Service
public class ExchangeServiceIMPL implements ExchangeService {
    @Autowired
    private ExchangeRepo exchangeRepository;
    @Override
    public Exchange addExchange(Exchange exchange) {
        return exchangeRepository.save(exchange);
    }

    @Override
    public int deleteExchangeByID(int ID) {
        return exchangeRepository.deleteExchangeByID(ID);
    }

    @Override
    public void deleteExchange(Exchange exchange) {
        exchangeRepository.delete(exchange);
    }
    
}
