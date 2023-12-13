package com.mysite.booreung.Register.mapper;

import org.springframework.stereotype.Repository;

import com.mysite.booreung.Register.vo.RegisterVo;

@Repository
public interface RegisterMapper {
	
	/*
	 * param : user_id
	 * author : 김미진
	 * description : 회원가입: 아이디 중복 검사
	 * */
	public Integer duplicateUserId(String user_id);
	
	/* 회원가입: 회원정보 추가 */
	//resultType //id값
	public void insertUser(RegisterVo registerVo) ;
}
