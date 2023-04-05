package com.stockex.stockexch.Entities;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "buy_order")
@DiscriminatorValue("BUY")
@Getter
@Setter
@NoArgsConstructor
public class BuyOrder extends Orders {
    @OneToOne
    @JoinColumn(name = "order_ID")
    private Orders order;

    public BuyOrder(User user, Order_book order_book, int amount, double price) {
        super(user, order_book, amount, price);
    }

}
