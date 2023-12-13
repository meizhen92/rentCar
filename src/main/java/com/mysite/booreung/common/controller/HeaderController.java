package com.mysite.booreung.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysite.booreung.common.model.HeaderService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
   
@Controller
public class HeaderController {
	
	@Autowired	
	HeaderService headerService;
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		System.out.println("-------------------logout 메소드 start");
		
		HttpSession session = request.getSession();
		//("invalidate()": 세션 전체 bye, "removeAttribute()": 타켓 세션 bye) 확인
		session.invalidate();
		
		return "redirect:/main";
	}
}
