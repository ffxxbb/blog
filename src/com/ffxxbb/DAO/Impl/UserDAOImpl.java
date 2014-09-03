package com.ffxxbb.DAO.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ffxxbb.DAO.UserDAO;
import com.ffxxbb.entity.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public List<User> getUser(User user) {
		// TODO Auto-generated method stub
		String hql="select user from User user where username= ? and password= ?" ;
		@SuppressWarnings("unchecked")
		List<User> list=this.getHibernateTemplate().find("select user from User user where username= "
				                                             + "'"+user.getUsername()+"'");
				                                             //+"' and password= '"+user.getPassword()+"'");
		//List<User> list=this.getHibernateTemplate().find("select user from User user");
		
		System.out.println(list.get(0).getUsername());
		return list;
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		
		this.getHibernateTemplate().save(user);
	}
	

}
