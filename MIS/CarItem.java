package com.dyy.conser;

public class CarItem {
	
	private String id;
	private String product;
	private Integer num;
	private String imgpath;
	private int price;
	private String des;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String des() {
		return des;
	}
	public void setdes(String des) {
		this.des = des;
	}
}
