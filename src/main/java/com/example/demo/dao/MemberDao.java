package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper; 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.domain.Member;

//@Repository
@Mapper	// class가 아닌 interface
public interface MemberDao { // db접근
	
//	@Autowired
//	public SqlSession sqlSession;
//	public void saveMember(Member member) {
//		sqlSession.insert("saveMember",member);
//	}
	
	public void saveMember(Member member);
	public String getGrade(String id, String pw);
	public List<Member> findAllMember(); // select한 memeber들을 list로 받아옴
}
