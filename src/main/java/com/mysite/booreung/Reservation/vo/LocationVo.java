package com.mysite.booreung.Reservation.vo;

public class LocationVo {
	
	private String location_no;
	private String location_name;
	
	public LocationVo(String location_no, String location_name) {
		super();
		this.location_no = location_no;
		this.location_name = location_name;
	}
	
	public String getLocation_no() {
		return location_no;
	}
	public void setLocation_no(String location_no) {
		this.location_no = location_no;
	}
	public String getLocation_name() {
		return location_name;
	}
	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}
	
	@Override
	public String toString() {
		return "LocationVo [location_no=" + location_no + ", location_name=" + location_name + "]";
	}
}
