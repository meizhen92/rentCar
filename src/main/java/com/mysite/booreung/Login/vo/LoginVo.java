package com.mysite.booreung.Login.vo;

public class LoginVo {
	
	// 변수
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_phone;
	private String user_secession;
	
	
	// 생성자
	public LoginVo(String user_id, String user_pw, String user_name, String user_phone, String user_secession) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_secession = user_secession;
	}
	
	// get,set
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	
	public String getUser_secession() {
		return user_secession;
	}
	
	public void setUser_secession(String user_secession) {
		this.user_secession = user_secession;
	}

	// toString()
	@Override
	public String toString() {
		return "LoginVo [user_id=" + user_id + ", user_pw=" + user_pw +  ", user_name=" + user_name +  ", user_phone=" + user_phone + ", user_secession=" + user_secession + "]";
	}
}
