package com.example.demo.domain;

import java.time.LocalDate;

public class Member {

	private String id;
	private String password;
	private String name;
	private String gender;
	private LocalDate birth;
	private String mail;
	private String phone;
	private String address;
	private LocalDate reg; // 선언시 null 초기화
	private String grade;
	
	public Member(String id, String password, String name, String gender, LocalDate birth, String mail, String phone,
			String address) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.mail = mail;
		this.phone = phone;
		this.address = address;
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

	public LocalDate getBirth() {
		return birth;
	}

	public String getMail() {
		return mail;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public LocalDate getReg() {
		return reg;
	}

	public String getGrade() {
		return grade;
	}


}
