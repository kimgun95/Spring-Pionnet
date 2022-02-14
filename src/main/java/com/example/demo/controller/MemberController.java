package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.MemberRequest;
import com.example.demo.dto.MemberResponse;
import com.example.demo.service.MemberService;


@Controller
//@RestController
@RequestMapping("/member")
public class MemberController {

	private MemberService memberService;

	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	

	@RequestMapping
	public String signUpMember() {
		return "member/member";
	}
	
	@RequestMapping("/signUp")
	public String signUpMember(@ModelAttribute MemberRequest req, Model model) {

		MemberResponse member = memberService.saveMember(req);

		model.addAttribute("member", member);
		
		return "member/memberJoinFrom";
		
	}
	
	@RequestMapping("/board")
	public String showBoard() {
		return "member/memberBoard";
	}
	
	@RequestMapping("/list")
	@ResponseBody				
	public List<MemberResponse> findAllMember(@RequestParam(value = "searchString", required = false) String gradeCode) {
		if (gradeCode == null) { // 처음 url의 경로
			return memberService.findMember("2");
		}
		else if (gradeCode.equals("")) { // "전체"의 경우
			return memberService.findAllMember();
		}
		return memberService.findMember(gradeCode); // "등급 설정"의 경우
	}
}

