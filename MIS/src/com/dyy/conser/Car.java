package com.dyy.conser;

import java.util.*;
import com.dyy.conser.CarItem;;

public class Car {
	private List<CarItem> list = new ArrayList<CarItem>();
	public List<CarItem> list(){
		return list;
	}
	
	public void add(CarItem carIterm){
		this.list.add(carIterm);
	}
	
	public void remove(CarItem carItem) {
		
				this.list.remove(carItem);
				
	}
		
	}
  

