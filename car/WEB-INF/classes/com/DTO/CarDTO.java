package com.DTO;

public class CarDTO {
   
   String car_name;
   int weight;
   float fuelefficiency;
   int overall_length;
   int overall_width;
   int overall_height;
   int displacement;
   int maintenance_expenses;
   int price;
   String companyName;
   String kind_of;
   String path;
   
   	public CarDTO() {}
    public CarDTO(String car_name, int weight, float fuelefficiency, int overall_length, int overall_width,
		int overall_height, int displacement, int maintenance_expenses, int price, String companyName, String kind_of) {
		super();
		this.car_name = car_name;
		this.weight = weight;
		this.fuelefficiency = fuelefficiency;
		this.overall_length = overall_length;
		this.overall_width = overall_width;
		this.overall_height = overall_height;
		this.displacement = displacement;
		this.maintenance_expenses = maintenance_expenses;
		this.price = price;
		this.companyName = companyName;
		this.kind_of = kind_of;
	}
	public String getCar_name() {
	   return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public float getFuelefficiency() {
		return fuelefficiency;
	}
	public void setFuelefficiency(float fuelefficiency) {
		this.fuelefficiency = fuelefficiency;
	}
	public int getOverall_length() {
		return overall_length;
	}
	public void setOverall_length(int overall_length) {
		this.overall_length = overall_length;
	}
	public int getOverall_width() {
		return overall_width;
	}
	public void setOverall_width(int overall_width) {
		this.overall_width = overall_width;
	}
	public int getOverall_height() {
		return overall_height;
	}
	public void setOverall_height(int overall_height) {
		this.overall_height = overall_height;
	}
	public int getDisplacement() {
		return displacement;
	}
	public void setDisplacement(int displacement) {
		this.displacement = displacement;
	}
	public int getMaintenance_expenses() {
		return maintenance_expenses;
	}
	public void setMaintenance_expenses(int maintenance_expenses) {
		this.maintenance_expenses = maintenance_expenses;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getKind_of() {
		return kind_of;
	}
	public void setKind_of(String kind_of) {
		this.kind_of = kind_of;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}