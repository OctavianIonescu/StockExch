package com.stockex.stockexch.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stockex.stockexch.Entities.BuyOrder;
import com.stockex.stockexch.Entities.SellOrder;
import com.stockex.stockexch.Repos.BuyOrderRepo;
import com.stockex.stockexch.Repos.OrdersRepo;
import com.stockex.stockexch.Repos.SellOrderRepo;

import jakarta.persistence.NoResultException;

@Service
public class SellOrderServiceIMPL extends OrderServiceIMPL implements SellOrderService {

    @Autowired
    private BuyOrderRepo buyOrderRepo;
    private OrdersRepo orderRepo;
    private SellOrderRepo sellRepo;

    @Override
    public void matchBuyOrders(SellOrder sellOrder) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'matchBuyOrders'");
    }

    @Override
    public boolean matchBuyOrder(SellOrder sellOrder) {
        BuyOrder temp = buyOrderRepo.findByOrderBook(sellOrder.getOrder_book());
        if (temp == null) {
            throw new NoResultException();
        }
        if (temp.getPrice() >= sellOrder.getPrice()) {
            if (temp.getAmount() < sellOrder.getAmount()) {
                SellOrder temp1 = new SellOrder(sellOrder.getUser(), sellOrder.getOrder_book(), temp.getAmount(),
                        temp.getPrice());
                sellRepo.save(temp1);
                orderRepo.setFulfilledByID(temp.getOrder_ID());
                sellOrder.setAmount(sellOrder.getAmount() - temp.getAmount());
                orderRepo.setAmountByID(sellOrder.getOrder_ID(), sellOrder.getAmount());
                return true;
            } else if (temp.getAmount() > sellOrder.getAmount()) {
                SellOrder temp1 = new SellOrder(temp.getUser(), temp.getOrder_book(), sellOrder.getAmount(),
                        sellOrder.getPrice());
                sellRepo.save(temp1);
                orderRepo.setFulfilledByID(sellOrder.getOrder_ID());
                temp.setAmount(temp.getAmount() - sellOrder.getAmount());
                orderRepo.setAmountByID(temp.getOrder_ID(), temp.getAmount());
                return true;
            } else {
                orderRepo.setFulfilledByID(sellOrder.getOrder_ID());
                orderRepo.setFulfilledByID(temp.getOrder_ID());

                return true;
            }
        } else {
            throw new NoResultException();
        }
    }

}
