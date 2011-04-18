package com.ci.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.ci.dao.CollegeDao;
import com.ci.dao.CollegeDaoImpl;
import com.ci.domain.Address;
import com.ci.domain.College;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CollegeAction extends ActionSupport implements ModelDriven<College>{

	private static final long serialVersionUID = -425014522708746486L;
	private static final Log log = LogFactory.getLog(CollegeAction.class);
	College college = new College();
	CollegeDao dao = new CollegeDaoImpl();
	
	public String execute(){
		college.setName("srms");
		college.setAffiliation("UPTU");
		college.setAbout("Top collge in U.P.");
		return SUCCESS;
	}
	
	public String register(){
		return SUCCESS;
	}
	
	public String save(){
		log.debug("save()...");
		log.info("college:" + college);
		
		// create adderess object
		Address a = new Address("Nainital Road1", 243122, "srms@gmail.com");
		Address a1 = new Address("Nainital Road2", 243122, "srms@gmail.com");
		Address a2 = new Address("Nainital Road3", 243122, "srms@gmail.com");
		// add address to college
		college.getAddresses().add(a);
		college.getAddresses().add(a1);
		college.getAddresses().add(a2);
		// save college
		log.debug(college);
		dao.save(college);
		log.info("done");
		return SUCCESS;
	}


	public College getModel() {
		return college;
	}
}
