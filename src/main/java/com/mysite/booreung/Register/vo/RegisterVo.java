package com.mysite.booreung.Register.vo;

import java.sql.Date;

public class RegisterVo {
	
	// 변수
	private Integer user_no;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_gender;
	private String user_addr;
	private String user_addrdt;
	private String user_postcode;
	private Integer user_age;
	private String user_phone;
	private String user_email;
	private Date user_createdate;
	private Date user_updatedate;
	private String user_grade;
	private String user_secession;
	
	// 생성자
	public RegisterVo(Integer user_no, String user_id, String user_pw, String user_name, String user_gender,
			String user_addr, String user_addrdt, String user_postcode, Integer user_age, String user_phone,
			String user_email, Date user_createdate, Date user_updatedate, String user_grade, String user_secession) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_addr = user_addr;
		this.user_addrdt = user_addrdt;
		this.user_postcode = user_postcode;
		this.user_age = user_age;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_createdate = user_createdate;
		this.user_updatedate = user_updatedate;
		this.user_grade = user_grade;
		this.user_secession = user_secession;
	}	
	
	// get,set
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
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
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_addrdt() {
		return user_addrdt;
	}
	public void setUser_addrdt(String user_addrdt) {
		this.user_addrdt = user_addrdt;
	}
	public String getUser_postcode() {
		return user_postcode;
	}
	public void setUser_postcode(String user_postcode) {
		this.user_postcode = user_postcode;
	}
	public Integer getUser_age() {
		return user_age;
	}
	public void setUser_age(Integer user_age) {
		this.user_age = user_age;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public Date getUser_createdate() {
		return user_createdate;
	}
	public void setUser_createdate(Date user_createdate) {
		this.user_createdate = user_createdate;
	}
	public Date getUser_updatedate() {
		return user_updatedate;
	}
	public void setUser_updatedate(Date user_updatedate) {
		this.user_updatedate = user_updatedate;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
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
		return "RegisterVo [user_no=" + user_no + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_gender=" + user_gender + ", user_addr=" + user_addr + ", user_addrdt="
				+ user_addrdt + ", user_postcode=" + user_postcode + ", user_age=" + user_age + ", user_phone="
				+ user_phone + ", user_email=" + user_email + ", user_createdate=" + user_createdate
				+ ", user_updatedate=" + user_updatedate + ", user_grade=" + user_grade + ", user_secession="
				+ user_secession + "]";
	}
}
