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
@Table(name = "sell_order")
@DiscriminatorValue("SELL")
@Getter
@Setter
@NoArgsConstructor
public class SellOrder extends Orders {
    @OneToOne
    @JoinColumn(name = "order_ID")
    private Orders order;

    public SellOrder(User user, Order_book order_book, int amount, double price) {
        super(user, order_book, amount, price);
    }
}
