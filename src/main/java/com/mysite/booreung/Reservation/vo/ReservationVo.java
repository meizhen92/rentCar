package com.mysite.booreung.Reservation.vo;

import java.util.Date;

public class ReservationVo {
	private Integer reser_no;
	private Date reser_outdate;
	private Date reser_indate;
	private String reser_incheck;
	
	public ReservationVo(Integer reser_no, Date reser_outdate, Date reser_indate, String reser_incheck) {
		super();
		this.reser_no = reser_no;
		this.reser_outdate = reser_outdate;
		this.reser_indate = reser_indate;
		this.reser_incheck = reser_incheck;
	}
	
	public Integer getReser_no() {
		return reser_no;
	}
	public void setReser_no(Integer reser_no) {
		this.reser_no = reser_no;
	}
	public Date getReser_outdate() {
		return reser_outdate;
	}
	public void setReser_outdate(Date reser_outdate) {
		this.reser_outdate = reser_outdate;
	}
	public Date getReser_indate() {
		return reser_indate;
	}
	public void setReser_indate(Date reser_indate) {
		this.reser_indate = reser_indate;
	}
	public String getReser_incheck() {
		return reser_incheck;
	}
	public void setReser_incheck(String reser_incheck) {
		this.reser_incheck = reser_incheck;
	}
	
	@Override
	public String toString() {
		return "ReservationVo [reser_no=" + reser_no + ", reser_outdate=" + reser_outdate + ", reser_indate="
				+ reser_indate + ", reser_incheck=" + reser_incheck + "]";
	}
	
}
