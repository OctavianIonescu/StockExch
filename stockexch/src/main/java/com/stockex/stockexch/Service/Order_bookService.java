package com.stockex.stockexch.Service;

import com.stockex.stockexch.Entities.Order_book;

public interface Order_bookService {
    public Order_book addOrder_book(Order_book order_book);
    public int deleteOrder_bookByID(int ID);
    public void deleteOrder_book(Order_book order_book);
}
