package com.ffxxbb.DAO.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ffxxbb.DAO.BlogDAO;
import com.ffxxbb.entity.Blog;
import com.ffxxbb.entity.User;

public class BlogDAOImpl extends HibernateDaoSupport implements BlogDAO {

	@Override
	public List<Blog> findRandomBlog() {
		// TODO Auto-generated method stub
		List<Blog> list=this.getHibernateTemplate().find("select blog from Blog blog ");
		return list;
	}

	@Override
	public Blog findBlogById(int id) {
		// TODO Auto-generated method stub
		
		List<Blog> list=this.getHibernateTemplate().find("select blog from Blog blog where blog.id="+id);
		return list.get(0);
	}

	//查询用户的所有博客
	@Override
	public List<Blog> findBlogByUser(String username) {
		// TODO Auto-generated method stub
		
		List<Blog> list=this.getHibernateTemplate().find("select blog from Blog blog where blog.username="+username);

		return list;
	}

	//查询用户所关注的好友的博客
	@Override
	public List<Blog> findBlogByFriend(String username) {
		// TODO Auto-generated method stub
		List<Blog> list=this.getHibernateTemplate().find("select blog from Blog blog where blog.username='"+username+"'");

		return list;
	}

}
