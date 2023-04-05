package com.stockex.stockexch.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockex.stockexch.Entities.Orders;
import com.stockex.stockexch.Repos.OrdersRepo;
@Service
public class OrderServiceIMPL implements OrderService {
    @Autowired
    private OrdersRepo orderRepository;

    @Override
    public Orders addOrder(Orders order) {
        return orderRepository.save(order);
    }

    @Override
    public int deleteOrderByID(int ID) {
        return orderRepository.deleteOrderByID(ID);
    }

    @Override
    public int setFulfilledByID(int ID) {
        return orderRepository.setFulfilledByID(ID);
    }
    
}
