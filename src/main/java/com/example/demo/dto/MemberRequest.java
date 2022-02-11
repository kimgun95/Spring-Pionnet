package com.example.demo.dto;

import java.time.LocalDate;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MemberRequest {
	private String id;
	private String password;
	private String name;
	private String gender;
	private int year;
	private int month;
	private int day;
	private String emailAddress;
	private String emailId;
	private String phone;
	private String address;
	private List<MultipartFile> files;

	public MemberRequest(String id, String password, String name, String gender, int year, int month, int day,
			String emailAddress, String emailId, String phone, String address, List<MultipartFile> files) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.year = year;
		this.month = month;
		this.day = day;
		this.emailAddress = emailAddress;
		this.emailId = emailId;
		this.phone = phone;
		this.address = address;
		this.files = files;
	}

	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public int getYear() {
		return year;
	}

	public int getMonth() {
		return month;
	}

	public int getDay() {
		return day;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public String getEmailId() {
		return emailId;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}
	
	public List<MultipartFile> getFiles(){
		return files;
	}

}
