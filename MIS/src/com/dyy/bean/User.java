package com.dyy.bean;

public class User {
	 
	    private String password="";
	    private String name="";
	    private String email;
	    private String phone;
	   
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getPassword() {
	        return password;
	    }
	    public void setPassword(String password) {
	        this.password = password;
	    }
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
	    public String getPhone() {
	        return phone;
	    }
	    public void setPhone(String phone) {
	        this.phone = phone;
	    }
	    
	    //��дtoString ����
	    @Override
	    public String toString() {
	        return "User [name=" + name + ", password=" + password + ", email=" + email + ", phone=" + phone
	                + "]";
	    }
		
	    
	    

}
