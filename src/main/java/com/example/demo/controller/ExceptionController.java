package com.example.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.example.demo.controller.exception.NoEntityException;

@ControllerAdvice	// 어디서든 해당 핸들러를 타게됨.
public class ExceptionController {
	
	@ExceptionHandler(NoEntityException.class)
	public ResponseEntity<Void> noEntityHandler() {
		System.out.println("NoEntityException!!!!!!!!");
		return new ResponseEntity<Void>(HttpStatus.BAD_REQUEST);
	}
}
