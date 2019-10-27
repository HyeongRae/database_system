package com.DTO;

public class Search_carDTO {
	String id;
	String search;
	String date;
	int count;

	public Search_carDTO() {}
	public Search_carDTO(String id, String search, String date, int count) {
		super();
		this.id = id;
		this.search = search;
		this.date = date;
		this.count = count;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
