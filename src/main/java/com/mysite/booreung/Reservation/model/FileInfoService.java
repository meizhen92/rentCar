package com.mysite.booreung.Reservation.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Reservation.mapper.FileInfoMapper;
import com.mysite.booreung.Reservation.vo.FileInfoVo;

@Service
public class FileInfoService {

	@Autowired
	FileInfoMapper fileInfoMapper;
	
	public void insertFileInfo(FileInfoVo fileInfoVo){
		
		fileInfoMapper.insertFileInfo(fileInfoVo);
	}
	
}
