package com.ci.domain;

public class Address {

	private Long addressId;
	private String address;
	private int pincode;
	private String email;
	
	public Address() {
		// TODO Auto-generated constructor stub
	}
	
	public Address(String address, int pincode, String email){
		this.address = address;
		this.pincode = pincode;
		this.email = email;
	}

	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", address=" + address + ", pincode="
				+ pincode + ", email=" + email + "]";
	}
	
}