package com.tmall.entity;


public class User {
	private int id;
	private String name;
	private String login;
	private String password;
	private String sex;
	private String phone;
	private String email;
	
	public int getID(){
		return id;
	}
	
	public void setID(int id){
		this.id = id;
	}
	
	
	public String getName(){
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	
	public String getLogin(){
		return login;
	}
	
	public void setLogin(String login){
		this.login = login;
	}
	
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	
	public String getSex(){
		return sex;
	}
	
	public void setSex(String sex){
		this.sex = sex;
	}
	
	
	public String getPhone(){
		return phone;
	}
	
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
}
