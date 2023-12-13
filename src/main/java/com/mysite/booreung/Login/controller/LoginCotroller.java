package com.mysite.booreung.Login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mysite.booreung.Login.model.LoginService;
import com.mysite.booreung.Login.vo.LoginVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginCotroller {

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	LoginService loginService;

	/*
	 * param : -
	 * author : 김미진
	 * description : 로그인 화면 띄우기
	 * */
	@GetMapping("/login")
	public String login() {
		System.out.println("-------------------login : start");
		return "Login/login";
	}

	/*
	 * param : login_form.submit(user_id, user_pw)
	 * author : 김미진
	 * description : 로그인 유효성 검사
	 * */
	@PostMapping("/loginValidation")
	public String loginValidation(Model model, LoginVo loginVo, HttpSession session) {
		System.out.println("-------------------loginValidation : start");

		// 제출한 아이디 정보 DB 검색
		LoginVo loginUser = loginService.loginUser(loginVo.getUser_id());
		System.out.println("loginUser : " + loginUser);
		if (loginUser != null) {
			// 암호화된비번, 입력비번 비교
			String pw = loginVo.getUser_pw();
			String db_pw = loginUser.getUser_pw();
			if (passwordEncoder.matches(pw, db_pw)) {
				session.setAttribute("UserID", loginUser.getUser_id());
				session.setAttribute("UserNm", loginUser.getUser_name());
				session.setAttribute("UserPh", loginUser.getUser_phone());

				return "redirect:/main";
			}
		}
		model.addAttribute("loginError", "입력 정보를 확인해주세요!");

		return "Login/login";
	}

}
