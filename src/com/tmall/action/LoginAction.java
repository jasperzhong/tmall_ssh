package com.tmall.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import com.tmall.entity.User;

public class LoginAction extends ActionSupport{
	private User user;
	
	public User getUser(){
		return user;
	}
	
	public void setUser(User uesr){
		this.user = uesr;
	}
	
	public String execute() throws Exception{
		String ret = INPUT;
		Connection conn = null;
		
		try{
			String URL = "jdbc:mysql://localhost:3306/tmall";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, "root", "microsoft");
			String sql = "SELECT * FROM user WHERE login = ? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,  user.getLogin());
			ps.setString(2,  user.getPassword());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				user.setID(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setSex(rs.getString("sex"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				Map<String, Object> session=null;
				ActionContext ac = ActionContext.getContext();
				session = ac.getSession();
				session.put("CURRENT_USER", user.getName());
				
				ret = SUCCESS;
			}else{
				//ËµÃ÷Î´×¢²á
				System.out.println("Î´×¢²á");
			}
		}catch(Exception e){
			e.printStackTrace();
			ret = INPUT;
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		}
		
		return ret;
	}
	
	
}
