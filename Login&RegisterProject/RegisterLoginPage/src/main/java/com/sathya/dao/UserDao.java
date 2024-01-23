package com.sathya.dao;

import com.sathya.model.User;

public interface UserDao {

	boolean isValidUser(String username, String password);

	boolean addUser(User user);

}
