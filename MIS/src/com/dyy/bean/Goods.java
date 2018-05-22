package com.dyy.bean;

public class Goods {

	public static int page_size=9;
	private int id;
	private String imgpath;
	private String name;
	private int price;
	private String descrise;

	public void setid(int id) {
		// TODO 自动生成的方法存根
		this.id = id;
		
	}
	
	public void setimgpath(String imgpath) {
		
		this.imgpath = imgpath;
	}

	public void setname(String name) {
		// TODO 自动生成的方法存根
		this.name = name;
	}

	public void setprice(int price) {
		// TODO 自动生成的方法存根
		this.price = price;;
	}
	
    public void setdescribe(String descrise) {
		this.descrise = descrise;
		
	}
    
    
    public String getimgpath() {
		return imgpath;
		
	}
   
    public String getname() {
		return name;
    }
    
    public int getprice() {
		return price;
		
    }
    public String getdescribe() {
		return descrise;
    }	
	
	
    
}
