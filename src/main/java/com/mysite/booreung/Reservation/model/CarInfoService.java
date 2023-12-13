package com.mysite.booreung.Reservation.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Reservation.mapper.CarInfoMapper;
import com.mysite.booreung.Reservation.vo.CarInfoVo;

@Service
public class CarInfoService {
	
	@Autowired
	CarInfoMapper carInfoMapper;  
	
	/* 해당 지역 대리점에 차량 조회 */
	public List<Map<String, Object>> carList(String store_name, String dayChoiceOut, String dayChoiceIn) {
		return carInfoMapper.carList(store_name, dayChoiceOut, dayChoiceIn);
	}
	
	/* 선택한 차량 상세정보 */
	public CarInfoVo selCarInfo(String carChoice) {
		return carInfoMapper.selCarInfo(carChoice);
	}
}
