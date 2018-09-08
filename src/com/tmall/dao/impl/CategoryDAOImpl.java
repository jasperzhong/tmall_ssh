package com.tmall.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import com.tmall.dao.CategoryDAO;
import com.tmall.entity.Category;
import com.tmall.dao.impl.BaseDAOImpl;

public class CategoryDAOImpl extends BaseDAOImpl<Category> implements CategoryDAO{
		
	@Override
	public int create(Category category){
		int result = 0;
		PreparedStatement ps = null;
		String sql = "INSERT INTO category(name) VALUES(?)";
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, category.getName());
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
		String sql = "DELETE FROM category WHERE id = ?";
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
	public int update(Category category){
		int result = 0;
		PreparedStatement ps = null;
		String sql = "UPDATE category SET name=? WHERE id=?";
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setInt(2,  category.getID());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		return result;
	}
	
	@Override
	public Category select(int id){
		Category category = null;
		PreparedStatement ps = null;
		String sql = "SELECT name FROM category WHERE id = ?";
		
		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				category = new Category();
				category.setName(rs.getString(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		
		return category;
	}
	
	
	public List<Category> selectAll(){
		List<Category> categoryList = new ArrayList<Category>();
		PreparedStatement ps = null;
		String sql = "SELECT * FROM category";

		try {
			getConnection();
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Category category = new Category();
				category.setID(rs.getInt("id"));
				category.setName(rs.getString(2));
				categoryList.add(category);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close();
		}		
		
		return categoryList;
	}
}
