package com.mysite.booreung.Mypage.vo;

public class MypageVo {

	// 변수
	private Integer user_no;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_addr;
	private String user_addrdt;
	private String user_postcode;
	private String user_phone;
	private String user_email;
	private String user_secession;

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
	
	public String getUser_secession() {
		return user_secession;
	}
	
	public void setUser_secession(String user_secession) {
		this.user_secession = user_secession;
	}

	// toString()
	@Override
	public String toString() {
		return "MypageVo [user_no=" + user_no + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_addr=" + user_addr + ", user_addrdt=" + user_addrdt + ", user_postcode="
				+ user_postcode + ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_secession=" + user_secession + "]";
	}

	// 생성자
	public MypageVo(Integer user_no, String user_id, String user_pw, String user_name, String user_addr,
			String user_addrdt, String user_postcode, String user_phone, String user_email, String user_secession) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_addr = user_addr;
		this.user_addrdt = user_addrdt;
		this.user_postcode = user_postcode;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_secession = user_secession;
	}

}
