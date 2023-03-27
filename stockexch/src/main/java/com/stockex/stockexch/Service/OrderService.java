package com.stockex.stockexch.Service;

import com.stockex.stockexch.Entities.Orders;

public interface OrderService {
    public Orders addOrder(Orders order);
    public int deleteOrderByID(int ID);
    public int setFulfilledByID(int ID);
    

}
