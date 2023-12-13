package com.mysite.booreung.Reservation.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Reservation.mapper.StoreInfoMapper;
import com.mysite.booreung.Reservation.vo.StoreInfoVo;

@Service
public class StoreInfoService {
	
	@Autowired
	StoreInfoMapper storeInfoMapper;
	
	/* 해당 지역 대리점만 조회 */
	public List<StoreInfoVo> selStore(String locaNo) {
		return storeInfoMapper.selStore(locaNo);
	}
	
	/* 해당 지역 대리점 위도, 경도 조회(대리점 별 위치 마커 표시용) */
	public List<Double> latiLongi(String selStName) {
		return storeInfoMapper.latiLongi(selStName);
	}
}
