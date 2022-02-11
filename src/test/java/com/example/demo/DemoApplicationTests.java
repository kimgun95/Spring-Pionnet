package com.example.demo;

import com.example.demo.domain.Member;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;

@SpringBootTest
public class DemoApplicationTests {

	@Test
	void memberTest() {
		Member m = new Member(
				"aaaa",
				"aaaa",
				"aaaa",
				"남",
				LocalDate.now(),
				"aaaa",
				"1111",
				"aaaa"
		);
		System.out.println(m.getAddress());
		System.out.println(m.getReg());


		System.out.println(m.getGrade());
	}

}
