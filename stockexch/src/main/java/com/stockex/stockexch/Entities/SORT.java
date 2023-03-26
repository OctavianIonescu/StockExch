package com.stockex.stockexch.Entities;

import java.util.List;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "stock_SORT")
@Getter
@Setter
@NoArgsConstructor
public class SORT {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "SORT_ID")
    private int SORT_ID;

    @OneToMany(mappedBy = "stock_SORT")
    private List<Exchange> exchange;
}
