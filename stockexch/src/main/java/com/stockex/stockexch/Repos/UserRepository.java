package com.stockex.stockexch.Repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.*;

import com.stockex.stockexch.Entities.*;
import jakarta.transaction.Transactional;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("SELECT u FROM User u where u.email = :uEmail AND u.user_password = :uPass")
    public User userLogin(@Param("uEmail") String userEmail, @Param("uPass") String userPassword);

    @Query("DELETE from User WHERE u_ID = :uID") // JPA version
    @Transactional
    @Modifying
    public int deleteUserById(@Param("uID") int id);

    @Query("UPDATE User SET email = :uEmail WHERE u_ID = :uID")
    @Transactional
    @Modifying
    public int updateUserEmailByUser(@Param("uID") int user, @Param("uEmail") String newEmail);

    @Query("UPDATE User SET user_address = :uAddress WHERE u_ID = :uID")
    @Transactional
    @Modifying
    public int updateUserAddressByUser(@Param("uID") int user, @Param("uAddress") String newAddress);

    @Query("UPDATE User SET first_name = :uFName WHERE u_ID = :uID")
    @Transactional
    @Modifying
    public int updateUserFirstNameByUser(@Param("uID") int user, @Param("uFName") String newFirstName);

    @Query("UPDATE User SET last_name = :uLName WHERE u_ID = :uID")
    @Transactional
    @Modifying
    public int updateUserLastNameByUser(@Param("uID") int user, @Param("uLName") String newLastName);

    @Query("UPDATE User SET user_password = :uPass WHERE u_ID = :uID")
    @Transactional
    @Modifying
    public int updateUserPasswordByUser(@Param("uID") int user, @Param("uPass") String newPassword);

    @Query("SELECT o FROM Orders o where user = :uID")
    public List<Orders> listOrdersByUser(@Param("uID") User iD);

    public Optional<User> findByEmail(@Param("uEmail") String userEmail);

}