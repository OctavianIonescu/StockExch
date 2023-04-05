package com.stockex.stockexch.Service;

import com.stockex.stockexch.Entities.SellOrder;

public interface SellOrderService extends OrderService {
    public void matchBuyOrders(SellOrder sellOrder);
}
