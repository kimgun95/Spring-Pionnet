package com.example.demo.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.MemberDao;
import com.example.demo.domain.Member;
import com.example.demo.dto.MemberRequest;
import com.example.demo.dto.MemberResponse;

@Service
@Transactional
public class MemberService {
	
	private MemberDao memberDao;
	
	@Autowired
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public MemberResponse saveMember(MemberRequest req) {
		Member member = new Member(
				req.getId(),
				req.getPassword(),
				req.getName(),
				req.getGender(),
				LocalDate.of(req.getYear(), req.getMonth(), req.getDay()),
				req.getEmailId() + "@" + req.getEmailAddress(),
				req.getPhone(),
				req.getAddress()
		);


		// 여러개의 이미지 파일 처리, 그래서 사실 이미지는 이번 실습에서 DB에 저장하지 않는다.
		for(MultipartFile image : req.getFiles()) {
			try {	
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYYMMDDHHmmSS");
				String currentDateTime = simpleDateFormat.format(new Date());
				String originalName = image.getOriginalFilename();		// form에서 보낼때 파일 이름
				
				File dest = new File(currentDateTime + "_" + originalName);
	
				image.transferTo(dest);

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		memberDao.saveMember(member);

		return MemberResponse.of(member);
	}
	
	public List<MemberResponse> findAllMember() {
		return memberDao.findAllMember()
				.stream()
				.map(MemberResponse::of)
				.collect(Collectors.toList());
	}

	public List<MemberResponse> findMember(String gradeCode) {
		return memberDao.findMember(gradeCode)
				.stream()
				.map(MemberResponse::of)
				.collect(Collectors.toList());
	}
}
