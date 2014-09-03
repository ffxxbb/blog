package com.ffxxbb.service.Impl;

import java.util.List;

import com.ffxxbb.DAO.UserDAO;
import com.ffxxbb.entity.User;
import com.ffxxbb.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public String list(User user) {
		// TODO Auto-generated method stub
		List<User> list=userDAO.getUser(user);
		if(list.size()>0){
			return "success";
		}else {
		    return "fail";
		}
	}

	@Override
	public String addUser(User user) {
		// TODO Auto-generated method stub
		userDAO.addUser(user);
		return "true";
	}
	
}
