package com.example.demo.dto;

public class JsonTestRequest {
	private String name;
	
	public JsonTestRequest() {
		
	}
	
	public JsonTestRequest(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
