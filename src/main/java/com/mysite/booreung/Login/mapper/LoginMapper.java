package com.mysite.booreung.Login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.mysite.booreung.Login.vo.LoginVo;

@Mapper
public interface LoginMapper {

	/* 제출한 아이디와 일치하는 아이디 있는지 확인 */
	public LoginVo loginUser(String user_id);
}
