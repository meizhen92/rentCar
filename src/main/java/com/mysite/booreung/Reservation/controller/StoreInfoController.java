package com.mysite.booreung.Reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.mysite.booreung.Reservation.model.StoreInfoService;

@Controller
public class StoreInfoController {

	@Autowired
	StoreInfoService storeInfoService;
	
}
