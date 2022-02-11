package com.example.demo.dto;

import java.time.format.DateTimeFormatter;

import com.example.demo.domain.Member;

public class MemberResponse {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String email;
	private String phone;
	private String address;

	public MemberResponse(String id, String password, String name, String gender, String birth, String email,
			String phone, String address) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	
	public static MemberResponse of(Member member) {
		return new MemberResponse(
				member.getId()
				, member.getPassword()
				, member.getName()
				, member.getGender()
				, member.getBirth().format(DateTimeFormatter.BASIC_ISO_DATE)
				, member.getMail()
				, member.getPhone()
				, member.getAddress()
		);
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
	public String getBirth() {
		return birth;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getAddress() {
		return address;
	}
	
}
