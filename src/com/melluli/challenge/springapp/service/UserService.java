package com.melluli.challenge.springapp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.melluli.challenge.springapp.model.User;

@Service
public class UserService {

    SessionFactory sessionFactory = null;

    @Transactional
    public List<User> fetchUsers() {
		
    	Query query = getSessionFactory().getCurrentSession().createQuery("from user"); 
		return query.list();
    }
    
    @Transactional
    public User getUserbyId(int userId) {
    	Session session = getSessionFactory().getCurrentSession();
    	return session.get(User.class, userId);
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

	
	@Autowired 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory; 
	}
	 
}
