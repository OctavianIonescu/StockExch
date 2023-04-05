package com.stockex.stockexch.Entities;

import java.util.List;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "user")
@Getter
@Setter
@NoArgsConstructor
public class User {

    @Id
    @Column(name = "u_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int u_ID;

    @Column(name = "first_name", nullable = false)
    @NotNull
    private String first_name;

    @Column(name = "last_name", nullable = false)
    @NotNull
    private String last_name;

    @Column(name = "user_address", nullable = false)
    @NotNull
    private String user_address;

    @Column(name = "email", nullable = false, unique = true)
    @NotNull
    private String email;

    @Column(name = "user_password", nullable = false)
    @NotNull
    private String user_password;

    @OneToMany(mappedBy = "user")
    private List<Orders> orders;

    @Column(name = "roles")
    private String roles;

    @Column(name = "active")
    private boolean active;

    public User(String first_name, String last_name, String user_address, String email, String user_password) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.user_address = user_address;
        this.email = email;
        this.user_password = user_password;
        this.active = true;
        this.roles = "ROLE_USER";
    }

    /*
     * public List<Account> getAccounts(){
     * return this.accounts;
     * }
     */
}
