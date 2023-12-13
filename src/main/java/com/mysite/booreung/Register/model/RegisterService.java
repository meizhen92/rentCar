package com.mysite.booreung.Register.model;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysite.booreung.Register.mapper.RegisterMapper;
import com.mysite.booreung.Register.vo.RegisterVo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class RegisterService {
	
	@Autowired
	RegisterMapper registerMapper;
	
	/*
	 * param : user_id
	 * author : 김미진
	 * description : 회원가입: 아이디 중복 검사
	 * */
	public Integer duplicateUserId(String user_id) {
		return registerMapper.duplicateUserId(user_id);
	}
	
	/* 회원가입: 핸드폰 본인 인증 */
	public void checkPhoneNum(String user_phone, String randCheckNum) {
		String api_key = "NCSLOPKTZDVVWCWY";
		String api_secret = "CHQ3M3RCCE4KA7EDZSO7PGDZ5VYY4HHC";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", user_phone);  // 수신전화번호
		params.put("from", user_phone);   // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "인증번호 : " + randCheckNum);
		params.put("app_version", "test app 1.2");  // application name and version
		
		/* 실제로 문자 전송 */
		try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }

	}
	
	/* 회원가입: 회원정보 추가 */
	public void insertUser(RegisterVo registerVo) {
		registerMapper.insertUser(registerVo);
	}
}
