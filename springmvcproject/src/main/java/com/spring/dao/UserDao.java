package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.User;

@Component
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void saveUser(User user) {
		
		this.hibernateTemplate.saveOrUpdate(user);
		
	}
	
	public User verifyEmailAndPassword(String email, String password) {
		Transaction tx=null;
		User user=null;
		
		try {
			Session s=hibernateTemplate.getSessionFactory().openSession();
			tx=s.beginTransaction();
			String query="from User where email=: e and password=:  p";
			Query q=s.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			user=(User)q.uniqueResult();
			tx.commit();
			s.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return user;
	}
	
	//get all users
	public List<User> getUser(){
		List<User> user=this.hibernateTemplate.loadAll(User.class);
		return user;
	}
	
	//delete the user
	@Transactional
	public void deleteUser(int id) {
		User u=this.hibernateTemplate.load(User.class,id);
		this.hibernateTemplate.delete(u);
	}
	
	//get single user
	public User getUser(int id) {
		return this.hibernateTemplate.get(User.class, id);
	}

}
