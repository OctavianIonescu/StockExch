package com.stockex.stockexch.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.stockex.stockexch.Repos.*;
import com.stockex.stockexch.Entities.*;

@Service
@Primary
public class UserServiceIMPL implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User addUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public int deleteUserByID(int id) {
        return userRepository.deleteUserById(id);
    }

    @Override
    public User userLogin(String userEmail, String userPassword) {
        return userRepository.userLogin(userEmail, userPassword);
    }

    @Override
    public int updateUserEmailByUser(User user, String newEmail) {
        int ID = user.getU_ID();
        user.setEmail(newEmail);
        return userRepository.updateUserEmailByUser(ID, newEmail);
    }

    @Override
    public int updateUserAddressByUser(User user, String newAddress) {
        int ID = user.getU_ID();
        user.setUser_address(newAddress);
        return userRepository.updateUserAddressByUser(ID, newAddress);
    }

    @Override
    public int updateUserFirstNameByUser(User user, String newFirstName) {
        int ID = user.getU_ID();
        user.setFirst_name(newFirstName);
        return userRepository.updateUserFirstNameByUser(ID, newFirstName);
    }

    @Override
    public int updateUserLastNameByUser(User user, String newLastName) {
        int ID = user.getU_ID();
        user.setLast_name(newLastName);
        return userRepository.updateUserLastNameByUser(ID, newLastName);
    }

    @Override
    public int updateUserPasswordByUser(User user, String newPassword) {
        int ID = user.getU_ID();
        user.setUser_password(newPassword);
        return userRepository.updateUserPasswordByUser(ID, newPassword);
    }

    @Override
    public List<Orders> listOrdersByUser(User user) {
        return userRepository.listOrdersByUser(user);
    }

}
