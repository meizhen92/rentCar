package com.mysite.booreung.Register.controller;

import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysite.booreung.Register.model.RegisterService;
import com.mysite.booreung.Register.vo.RegisterVo;

@Controller
public class RegisterController {

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	RegisterService registerService;
	
	/*
	 * param : -
	 * author : 김미진
	 * description : 회원가입: 약관 동의 페이지
	 * */
	@RequestMapping("/register01")
	public String register01() {
		System.out.println("-------------------register01 : start");
		return "Register/register01";
	}

	/*
	 * param : -
	 * author : 김미진
	 * description : 회원가입: 사용자 정보 추가 페이지
	 * */
	@RequestMapping("/register02")
	public String register02() {
		System.out.println("-------------------register02 : start");
		return "Register/register02";
	}

	/*
	 * param : user_id
	 * author : 김미진
	 * description : 회원가입: 아이디 중복 검사
	 * */
	@PostMapping("/register02_dupl")
	@ResponseBody
	public String register02_dupl(Model model, String user_id) {
		System.out.println("-------------------register02_dupl : start");
		Integer duplicateUserId = registerService.duplicateUserId(user_id);
		if (duplicateUserId == 0) {
			return "false";
		}
		return "true";
	}

	/*
	 * param : user_phone
	 * author : 김미진
	 * description : 회원가입: 핸드폰 인증
	 * */
	@RequestMapping("/register02_phone")
	@ResponseBody
	public String register02_phone(String user_phone) {
		System.out.println("-------------------register02_phone : start");
		// 인증번호 4자리 만들기
		Random rand = new Random();
		String randCheckNum = "";
		for (int i = 0; i < 4; i++) {
			String selRand = Integer.toString(rand.nextInt(10));
			randCheckNum += selRand;
		}
		System.out.println("user_phone      :        " + user_phone);
		System.out.println("randCheckNum      :        " + randCheckNum);

		// 서비스에서 비즈니스로직 작성
		registerService.checkPhoneNum(user_phone, randCheckNum);
		return randCheckNum;
	}

	/*
	 * param : testForm.submit
	 * author : 김미진
	 * description : 회원가입: 회원정보 DB Insert
	 * */
	@PostMapping("/register02_join")
	public String register02_join(RegisterVo registerVo, @RequestParam Map<String, Object> para) {
		System.out.println("-------------------register02_join : start");

		// 뷰에서 받아온 input 값 중에서 password 만 변경(사실 이 부분은 MVC일땐 service 에 들어가는게 맞다)
		String passwordChange = passwordEncoder.encode(registerVo.getUser_pw());
		registerVo.setUser_pw(passwordChange);

		// model 객체에 없는 값 para 로 가져와 email 값 완전체 만들기
		String mailId = (String) para.get("mailid");
		String domain = (String) para.get("domain");
		String user_email = mailId + "@" + domain;
		registerVo.setUser_email(user_email);
		
		// 변경된 정보를 담아서 서비스로 이동, void 타입이므로 변수에 담지 않음
		registerService.insertUser(registerVo);

		return "redirect:/main";
	}

}
