package com.tmall.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;

import com.tmall.dao.BaseDAO;

public class BaseDAOImpl<T> implements BaseDAO<T>{
	protected Connection conn = null;
	
	public void getConnection(){
		conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tmall","root","microsoft");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close (){
		if(conn != null){
			try{
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	// Ôö
	public int create(T t){
		return 0;
	}
	
	// É¾
	public int delete(int id){
		return 0;
	}
	
	// ¸Ä
	public int update(T t){
		return 0;
	}
	
	// ²é
	public T select(int id){
		return null;
	}
}
