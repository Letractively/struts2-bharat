package com.ci.domain;

import java.util.Date;

public class Course {

	private int courseId;	// primary key generate by hibernate
	private String category; // engg/mba
	private int duration;
	private String examPattern; // semester, yearly constant;
	private int seats;
	private Date openingDate;
	private boolean hostel;
	private String deliveryType; // part time full time constant
	private int courseName; // database table
	private String courseDescription;
	// fee
	private double fee;

	private String eligibility;
	private String howToApply;
	private Date closingDate;
	private String comments;
	private String courseUrl; // url of college web site page

	public Course(String category, int duration, String examPattern, int seats,
			Date openingDate, boolean hostel, String deliveryType,
			String courseName, String courseDescription, double fee,
			String eligibility, String howToApply, Date closingDate,
			String comments, String courseUrl) {
		// TODO Auto-generated constructor stub
	}

}
