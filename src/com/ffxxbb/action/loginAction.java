package com.ffxxbb.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ffxxbb.entity.Blog;
import com.ffxxbb.entity.User;
import com.ffxxbb.service.BlogService;
import com.ffxxbb.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport{

	private UserService userService;
	private BlogService blogService;
	private String username;
	private String password;
	private ActionContext context;
	private Map session;
	//private Map request;
	
   public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	

public BlogService getBlogService() {
		return blogService;
	}


	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
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


@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	   System.out.println("action");
	   User user=new User();
	   user.setUsername(username);
	   user.setPassword(password);
	   
	   this.context=ActionContext.getContext();
	   this.session=this.context.getSession();
	 //  this.request = (Map)this.context.get("request");
	   
      String isSuc=this.userService.list(user);
	   
	   HttpServletRequest request = ServletActionContext.getRequest();
		//request.setAttribute("blogs", );
		if(null==username){
			String userr=(String)request.getAttribute("user");
			
		}
		
		
	  
	   List<Blog> list=blogService.findBlogByFriend(username);
 
	   
	   if(isSuc.equals("success")){
		   
	       this.session.put("user", username);
	     // request.setAttribute("blogs", list);
		   //this.session.put("blogs", list);
	       return SUCCESS;
	   }else {
		   return INPUT;
	   }
	
}
	
}
