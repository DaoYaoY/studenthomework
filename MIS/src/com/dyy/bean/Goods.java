package com.dyy.bean;

public class Goods {

	public static int page_size=9;
	private int id;
	private String imgpath;
	private String name;
	private int price;
	private String descrise;

	public void setid(int id) {
		// TODO �Զ����ɵķ������
		this.id = id;
		
	}
	
	public void setimgpath(String imgpath) {
		
		this.imgpath = imgpath;
	}

	public void setname(String name) {
		// TODO �Զ����ɵķ������
		this.name = name;
	}

	public void setprice(int price) {
		// TODO �Զ����ɵķ������
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
