package com.mysite.booreung.Reservation.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.booreung.Reservation.vo.FileInfoVo;

@Mapper
public interface FileInfoMapper {
	
	public void insertFileInfo(FileInfoVo fileInfoVo);

}
