package com.stockex.stockexch.Service;

import java.util.*;

import com.stockex.stockexch.Entities.*;

public interface UserService {
    public User addUser(User user);
    public int deleteUserByID(int id);
    public User userLogin(String userEmail, String userPassword);
    public int updateUserEmailByUser(User user, String newEmail);
    public int updateUserAddressByUser(User user, String newAddress);
    public int updateUserFirstNameByUser(User user, String newFirstName);
    public int updateUserLastNameByUser(User user, String newLastName);
    public int updateUserPasswordByUser(User user, String newPassword);
    //public List<Transaction> listTransactionsByUser(Users user);
    //public List<Accounts> listAccountsByUser(Users user);

}
