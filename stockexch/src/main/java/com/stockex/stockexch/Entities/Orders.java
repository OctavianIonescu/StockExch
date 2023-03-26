package com.stockex.stockexch.Entities;

import java.sql.Timestamp;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "orders")
@Inheritance(strategy = InheritanceType.JOINED)
@Getter
@Setter
@NoArgsConstructor
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_ID")
    private int order_ID;

    @ManyToOne(cascade = CascadeType.ALL)
    private User user;

    @ManyToOne(cascade = CascadeType.ALL)
    private Order_book order_book;

    @Column(name = "type")
    private String type;

    @Column(name = "status", columnDefinition = "VARCHAR(255) DEFAULT 'PENDING'")
    String status;

    @Column(name = "date_ordered", nullable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP()")
    private Timestamp date_ordered;
}
