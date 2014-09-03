package com.ffxxbb.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ffxxbb.entity.Blog;
import com.ffxxbb.service.BlogService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport{

	
	private BlogService blogService;
	private int id;
	private String username;
	private ActionContext context;
	private Map request;
	private Map session;
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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


	/*
     * TODO
     * 欢迎页面随机查出几个博客文章，还没实现随机查询
     * 
     */
	public String randomArticle(){
		
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("T_flag", "123");
		
		List<Blog> list=blogService.findRandomBlog();
		System.out.println(list.size()+"title:"+list.get(0).getTitle());
		request.setAttribute("blogs", list);
		return SUCCESS;
	}
	
	/*
	 * 点击文章标题，进入文章详细页面
	 */
	public String singleBlog(){
		
		Blog blog=blogService.findBlogById(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("blogbyId", blog);
		return SUCCESS;
	}
	
	/*
	 * 查出关注的还有的文章,通过用户名查出所关注的好友，再查出好友的blog
	 */
	public String findBlogByFriend(){
		
		 this.context=ActionContext.getContext();
		this.session=this.context.getSession();
		String loginUsername=(String)this.session.get("user");
		System.out.println("username"+loginUsername);
		List<Blog> list=blogService.findBlogByFriend(loginUsername);
		System.out.println(list.size()+"title:"+list.get(0).getTitle());
		//this.context=ActionContext.getContext();
		this.request = (Map)this.context.get("request");
		request.put("blogs", list);
		request.put("T_flag", "123");
		return SUCCESS;
	}
	
}

