package com.ci.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ci.domain.College;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

public class CollegeDaoImpl implements CollegeDao {

	@SessionTarget
	protected Session session;
	@TransactionTarget
	protected Transaction transaction;

	public void save(College college) {
		try {
			session.save(college);
			session.flush();
		} catch (HibernateException e) {
			e.printStackTrace();
		} 
	}
}
