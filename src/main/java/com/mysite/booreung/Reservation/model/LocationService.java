package com.mysite.booreung.Reservation.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Reservation.mapper.LocationMapper;

@Service
public class LocationService {
	
	@Autowired
	LocationMapper locationMapper;
	
	public ArrayList<String> locationList() {
		return locationMapper.locationList();
	}

}
