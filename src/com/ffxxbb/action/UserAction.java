package com.ffxxbb.action;

import java.util.Map;

import com.ffxxbb.entity.User;
import com.ffxxbb.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{

	private User user;
    private String username;
    private String password;
    private UserService userService;
    private ActionContext context;
    private Map session;
    
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String register(){
		
		
		this.context=ActionContext.getContext();
	    this.session=this.context.getSession();
	    this.session.put("user", username);
		System.out.println(username);
		System.out.println(password);
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		userService.addUser(user);
		return SUCCESS;
	}
}
