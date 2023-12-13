package com.mysite.booreung.Reservation.vo;

import java.util.Date;

public class StoreInfoVo {
	private Integer store_no;
	private String store_name;
	private String store_tel;
	private String store_addr;
	private Double store_lati;
	private Double store_longi;
	private Date store_time;
	private String store_remark;

	public StoreInfoVo(Integer store_no, String store_name, String store_tel, String store_addr, Double store_lati,
			Double store_longi, Date store_time, String store_remark) {
		super();
		this.store_no = store_no;
		this.store_name = store_name;
		this.store_tel = store_tel;
		this.store_addr = store_addr;
		this.store_lati = store_lati;
		this.store_longi = store_longi;
		this.store_time = store_time;
		this.store_remark = store_remark;
	}
	
	public Integer getStore_no() {
		return store_no;
	}
	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_tel() {
		return store_tel;
	}
	public void setStore_tel(String store_tel) {
		this.store_tel = store_tel;
	}
	public String getStore_addr() {
		return store_addr;
	}
	public void setStore_addr(String store_addr) {
		this.store_addr = store_addr;
	}
	public Double getStore_lati() {
		return store_lati;
	}
	public void setStore_lati(Double store_lati) {
		this.store_lati = store_lati;
	}
	public Double getStore_longi() {
		return store_longi;
	}
	public void setStore_longi(Double store_longi) {
		this.store_longi = store_longi;
	}
	public Date getStore_time() {
		return store_time;
	}
	public void setStore_time(Date store_time) {
		this.store_time = store_time;
	}
	public String getStore_remark() {
		return store_remark;
	}
	public void setStore_remark(String store_remark) {
		this.store_remark = store_remark;
	}
	
	@Override
	public String toString() {
		return "StoreInfoVo [store_no=" + store_no + ", store_name=" + store_name + ", store_tel=" + store_tel
				+ ", store_addr=" + store_addr + ", store_lati=" + store_lati + ", store_longi=" + store_longi
				+ ", store_time=" + store_time + ", store_remark=" + store_remark + "]";
	}
}
