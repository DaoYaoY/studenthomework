package com.dyy.conser;

import java.util.*;


public class Car {
	private List<CarItem> list = new ArrayList<CarItem>();
	public List<CarItem> list(){
		return list;
	}
	
	public void add(CarItem carIterm){
		this.list.add(carIterm);
	}
	
	public void remove(String id) {
		
				this.list.remove(id);
				
	}
		
	}
  

