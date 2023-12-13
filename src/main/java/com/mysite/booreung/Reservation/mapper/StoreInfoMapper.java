package com.mysite.booreung.Reservation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.booreung.Reservation.vo.StoreInfoVo;

@Mapper
public interface StoreInfoMapper {
	
	/* 해당 지역 대리점만 조회 */
	public List<StoreInfoVo> selStore(String locaNo);
	
	/* 해당 지역 대리점 위도, 경도 조회(대리점 별 위치 마커 표시용) */
	public List<Double> latiLongi(String selStName);
}
