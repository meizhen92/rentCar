package com.mysite.booreung.main.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysite.booreung.Reservation.model.LocationService;

@Controller
public class MainController {
	
	@Autowired
	LocationService locationService;
	
	/*
	 * param : -
	 * author : 김미진
	 * description : 지역데이터 리스트로 받아오기
	 * */
	@RequestMapping("/main")
	public String main(Model model) {
		System.out.println("-------------------main : start");
		
		ArrayList<String> locationList = locationService.locationList();
		model.addAttribute("locationList", locationList);
		return "Main/main";
	}
}
