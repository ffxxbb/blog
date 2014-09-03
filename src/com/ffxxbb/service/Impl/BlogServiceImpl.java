package com.ffxxbb.service.Impl;

import java.util.ArrayList;
import java.util.List;

import com.ffxxbb.DAO.BlogDAO;
import com.ffxxbb.entity.Blog;
import com.ffxxbb.service.BlogService;

public class BlogServiceImpl implements BlogService{

	
	private BlogDAO blogDAO;
	
	public BlogDAO getBlogDAO() {
		return blogDAO;
	}

	public void setBlogDAO(BlogDAO blogDAO) {
		this.blogDAO = blogDAO;
	}

	@Override
	public List<Blog> findRandomBlog() {
		// TODO Auto-generated method stub
		List<Blog> randomBlog=new ArrayList<Blog>();
		randomBlog=blogDAO.findRandomBlog();
		return randomBlog;
	}

	@Override
	public Blog findBlogById(int id) {
		// TODO Auto-generated method stub
		
		Blog blogById=blogDAO.findBlogById(id);
		return blogById;
	}

	//��ѯ�û������в���
	@Override
	public List<Blog> findBlogByUser(String username) {
		// TODO Auto-generated method stub
		return (List<Blog>)blogDAO.findBlogByUser(username);
	}

	//��ѯ�û�����ע�Ĳ���
	@Override
	public List<Blog> findBlogByFriend(String username) {
		// TODO Auto-generated method stub
		
		return (List<Blog>)blogDAO.findBlogByFriend(username);
	}

}
