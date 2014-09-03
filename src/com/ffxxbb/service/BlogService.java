package com.ffxxbb.service;

import java.util.List;

import com.ffxxbb.entity.Blog;

public interface BlogService {

	public List<Blog> findRandomBlog();
	
	public Blog findBlogById(int id);
	
	public List<Blog> findBlogByUser(String username);
	
	public  List<Blog> findBlogByFriend(String username);
}
