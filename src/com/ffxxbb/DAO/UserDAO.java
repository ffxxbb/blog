package com.ffxxbb.DAO;

import java.util.List;

import com.ffxxbb.entity.User;

public interface UserDAO {
	
	public List<User> getUser(User user);
	
	public void addUser(User user);

}
