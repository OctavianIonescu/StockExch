package com.stockex.stockexch.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockex.stockexch.Entities.Order_book;
import com.stockex.stockexch.Repos.Order_bookRepo;

@Service
public class Order_bookServiceIMPL implements Order_bookService {
    @Autowired
    private Order_bookRepo order_bookRepository;

    @Override
    public Order_book addOrder_book(Order_book order_book) {
        return order_bookRepository.save(order_book);
    }

    @Override
    public int deleteOrder_bookByID(int ID) {
        return order_bookRepository.deleteOrder_bookByID(ID);
    }

    @Override
    public void deleteOrder_book(Order_book order_book) {
        order_bookRepository.delete(order_book);
    }

    @Override
    public Order_book findByName(String parameter) {
        return order_bookRepository.findByName(parameter);
    }

}
