package com.mysite.booreung.Reservation.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.booreung.Reservation.vo.CarInfoVo;

@Mapper
public interface CarInfoMapper {
	
	/* 해당 지역 대리점에 차량 조회 */
	public List<Map<String, Object>> carList(String store_name, String dayChoiceOut, String dayChoiceIn);
	
	/* 선택한 차량 상세정보 */
	public CarInfoVo selCarInfo(String carChoice);
}
