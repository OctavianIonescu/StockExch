package com.stockex.stockexch.Service;

import com.stockex.stockexch.Entities.BuyOrder;

public interface BuyOrderService extends OrderService {
    public void matchSellOrders(BuyOrder buyOrder);

    public boolean matchSellOrder(BuyOrder buyOrder);
}
