package com.stockex.stockexch.Entities;

import java.util.List;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "order_book")
@Getter
@Setter
@NoArgsConstructor
public class Order_book {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_book_ID")
    private int order_book_ID;

    @Column(name = "company_name")
    private String company_name;

    @OneToMany(mappedBy = "order_book")
    private List<Orders> orders;

    @ManyToOne(cascade = CascadeType.ALL)
    private Exchange exchange;

    public Order_book(String company_name, Exchange exchange) {
        this.company_name = company_name;
        this.exchange = exchange;
    }
}
