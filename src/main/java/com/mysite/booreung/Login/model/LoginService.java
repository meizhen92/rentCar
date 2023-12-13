package com.mysite.booreung.Login.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Login.mapper.LoginMapper;
import com.mysite.booreung.Login.vo.LoginVo;

@Service
public class LoginService {

	@Autowired
	LoginMapper loginMapper;
	
	
	/* 제출한 아이디와 일치하는 아이디 있는지 확인 */		
	public LoginVo loginUser(String user_id) {
		return loginMapper.loginUser(user_id);
	}
}
