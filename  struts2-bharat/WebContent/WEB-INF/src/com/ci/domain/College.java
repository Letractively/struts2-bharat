package com.ci.domain;

import java.util.ArrayList;
import java.util.List;

public class College {

	private Long collegeId;
	private String name;
	private String Affiliation;
	// private Date dateEstablished;
	// College will have a list of courses
	// private String noticeBoard;
	private String about;
	// private ArrayList courses;
	private List<Address> addresses = new ArrayList<Address>();

	// Mandatory default constructor
	public College() {
		// TODO Auto-generated constructor stub
	}

	public Long getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(Long collegeId) {
		this.collegeId = collegeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAffiliation() {
		return Affiliation;
	}

	public void setAffiliation(String affiliation) {
		Affiliation = affiliation;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	@Override
	public String toString() {
		return "College [collegeId=" + collegeId + ", name=" + name
				+ ", Affiliation=" + Affiliation + ", about=" + about
				+ ", addresses=" + addresses + "]";
	}

}
