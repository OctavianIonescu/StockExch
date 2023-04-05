package com.stockex.stockexch.Service;

import org.springframework.beans.factory.annotation.Autowired;

import com.stockex.stockexch.Entities.BuyOrder;
import com.stockex.stockexch.Entities.Orders;
import com.stockex.stockexch.Entities.SellOrder;
import com.stockex.stockexch.Repos.BuyOrderRepo;
import com.stockex.stockexch.Repos.OrdersRepo;
import com.stockex.stockexch.Repos.SellOrderRepo;

import jakarta.persistence.NoResultException;

public class BuyOrderServiceIMPL extends OrderServiceIMPL implements BuyOrderService {

    @Autowired
    private BuyOrderRepo buyOrderRepo;
    private OrdersRepo orderrRepo;
    private SellOrderRepo sellRepo;

    public BuyOrder addOrder(BuyOrder order) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'addOrder'");
    }

    @Override
    public int deleteOrderByID(int ID) {
        return buyOrderRepo.deleteOrderByID(ID);
    }

    @Override
    public int setFulfilledByID(int ID) {
        return buyOrderRepo.setFulfilledByID(ID);
    }

    @Override
    public void matchSellOrders(BuyOrder buyOrder) {
        do {
            try {
                matchSellOrder(buyOrder);
            } catch (NoResultException e) {
                break;
            }
        } while (buyOrder.getAmount() > 0 && buyOrder.getStatus() == "pending");
    }

    @Override
    public boolean matchSellOrder(BuyOrder buyOrder) {
        SellOrder temp = sellRepo.findByOrderBook(buyOrder.getOrder_book());
        if (temp == null) {
            throw new NoResultException();
        }
        if (temp.getPrice() <= buyOrder.getPrice()) {
            if (temp.getAmount() < buyOrder.getAmount()) {
                BuyOrder temp1 = new BuyOrder(buyOrder.getUser(), buyOrder.getOrder_book(), temp.getAmount(),
                        temp.getPrice());
                buyOrderRepo.save(temp1);
                orderrRepo.setFulfilledByID(temp.getOrder_ID());
                buyOrder.setAmount(buyOrder.getAmount() - temp.getAmount());
                orderrRepo.setAmountByID(buyOrder.getOrder_ID(), buyOrder.getAmount());
                return true;
            } else if (temp.getAmount() > buyOrder.getAmount()) {
                SellOrder temp1 = new SellOrder(temp.getUser(), temp.getOrder_book(), buyOrder.getAmount(),
                        buyOrder.getPrice());
                sellRepo.save(temp1);
                orderrRepo.setFulfilledByID(buyOrder.getOrder_ID());
                temp.setAmount(temp.getAmount() - buyOrder.getAmount());
                orderrRepo.setAmountByID(temp.getOrder_ID(), temp.getAmount());
                return true;
            } else {
                orderrRepo.setFulfilledByID(buyOrder.getOrder_ID());
                orderrRepo.setFulfilledByID(temp.getOrder_ID());

                return true;
            }
        } else {
            throw new NoResultException();
        }
    }

}