package com.mysite.booreung.Reservation.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LocationMapper {
	
	public ArrayList<String> locationList ();
}
