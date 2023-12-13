package com.mysite.booreung.Reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.mysite.booreung.Reservation.model.CarInfoService;

@Controller
public class CarInfoController {

	@Autowired
	CarInfoService carInfoService;
}
