package com.stockex.stockexch.Entities;

import java.util.List;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "stock_exchange")
@Getter
@Setter
@NoArgsConstructor
public class Exchange {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "exchange_ID")
    private int exchange_ID;

    @Column(name = "fee_Ladder")
    private double fee_Ladder;

    @OneToMany(mappedBy = "exchange")
    private List<Order_book> order_book;

    @ManyToOne(cascade = CascadeType.ALL)
    private SORT stock_SORT;
}
