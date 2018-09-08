package com.tmall.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tmall.entity.User;
import com.tmall.dao.UserDAO;
import com.tmall.dao.impl.BaseDAOImpl;

public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO{
	
	@Override
	public int create(User user){
		int result = 0;
		PreparedStatement ps = null;
		String sql = "INSERT INTO user(name,login,password,sex,phone,email) VALUES(?,?,?,?,?,?)";
		try {			
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getLogin());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getPhone());
			ps.setString(6, user.getEmail());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		return result;
	}
	
	@Override
	public int delete(int id){
		int result = 0;
		PreparedStatement ps = null;
		String sql = "DELETE FROM user WHERE id = ?";
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		return result;
	}
	
	
	@Override
	public int update(User user){
		int result = 0;
		PreparedStatement ps = null;
		String sql = "UPDATE user SET name=?, login=?, password=?, sex=?, phone=?, email=? WHERE id=?";
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getLogin());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getPhone());
			ps.setString(6, user.getEmail());
			ps.setInt(7,  user.getID());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		return result;
	}
	
	@Override
	public User select(int id){
		User user = null;
		PreparedStatement ps = null;
		String sql = "SELECT name, login, password, sex, phone, email FROM user WHERE id = ?";
		
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				user = new User();
				user.setName(rs.getString(1));
				user.setLogin(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setSex(rs.getString(4));
				user.setPhone(rs.getString(5));
				user.setEmail(rs.getString(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		
		return user;
	}
}
 