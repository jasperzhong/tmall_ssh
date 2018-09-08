package com.tmall.dao;



public interface BaseDAO<T> {
	
	public void getConnection();
	
	public void close ();
	
	// Ôö
	public int create(T t);
	
	// É¾
	public int delete(int id);
	
	// ¸Ä
	public int update(T t);
	
	// ²é
	public T select(int id);
}