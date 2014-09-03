package com.ffxxbb.DAO;

import java.util.List;

import com.ffxxbb.entity.Blog;

public interface BlogDAO {
	
	public List<Blog> findRandomBlog();
	
	public Blog findBlogById(int id);

	public List<Blog> findBlogByUser(String username);
	
	public List<Blog> findBlogByFriend(String username);

}
