package com.DTO;

public class CarImageDTO {
	String car_name;
	String path;
	
	public CarImageDTO() {}
	public CarImageDTO(String car_name, String path) {
		super();
		this.car_name = car_name;
		this.path = path;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
