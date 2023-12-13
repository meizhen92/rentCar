package com.mysite.booreung.Reservation.vo;

public class CarInfoVo {

	private Integer car_no;
	private String car_name;
	private String car_plate;
	private String car_color;
	private String car_fuel;
	private String car_type;
	private String car_class;
	private Integer car_num;
	private String car_use;
	private Integer car_price;
	private Double car_driven;
	private Integer store_no;
	
	/*
	 * public CarInfoVo() { super(); }
	 */

	public CarInfoVo(Integer car_no, String car_name, String car_plate, String car_color, String car_fuel, String car_type,
			String car_class, Integer car_num, String car_use, Integer car_price, Double car_driven, Integer store_no) {
		super();
		this.car_no = car_no;
		this.car_name = car_name;
		this.car_plate = car_plate;
		this.car_color = car_color;
		this.car_fuel = car_fuel;
		this.car_type = car_type;
		this.car_class = car_class;
		this.car_num = car_num;
		this.car_use = car_use;
		this.car_price = car_price;
		this.car_driven = car_driven;
		this.store_no = store_no;
	}
	
	public Integer getCar_no() {
		return car_no;
	}
	public void setCar_no(Integer car_no) {
		this.car_no = car_no;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getCar_plate() {
		return car_plate;
	}
	public void setCar_plate(String car_plate) {
		this.car_plate = car_plate;
	}
	public String getCar_color() {
		return car_color;
	}
	public void setCar_color(String car_color) {
		this.car_color = car_color;
	}
	public String getCar_fuel() {
		return car_fuel;
	}
	public void setCar_fuel(String car_fuel) {
		this.car_fuel = car_fuel;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getCar_class() {
		return car_class;
	}
	public void setCar_class(String car_class) {
		this.car_class = car_class;
	}
	public Integer getCar_num() {
		return car_num;
	}
	public void setCar_num(Integer car_num) {
		this.car_num = car_num;
	}
	public String getCar_use() {
		return car_use;
	}
	public void setCar_use(String car_use) {
		this.car_use = car_use;
	}
	public Integer getCar_price() {
		return car_price;
	}
	public void setCar_price(Integer car_price) {
		this.car_price = car_price;
	}
	public Double getCar_driven() {
		return car_driven;
	}
	public void setCar_driven(Double car_driven) {
		this.car_driven = car_driven;
	}
	public Integer getStore_no() {
		return store_no;
	}
	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
	}
	
	@Override
	public String toString() {
		return "CarInfoVo [car_no=" + car_no + ", car_name=" + car_name + ", car_plate=" + car_plate + ", car_color=" + car_color + ", car_fuel="
				+ car_fuel + ", car_type=" + car_type + ", car_class=" + car_class + ", car_num=" + car_num
				+ ", car_use=" + car_use + ", car_price=" + car_price + ", car_driven=" + car_driven + ", store_no="
				+ store_no + "]";
	}

}
