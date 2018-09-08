package com.tmall.dao;



public interface BaseDAO<T> {
	
	public void getConnection();
	
	public void close ();
	
	// ��
	public int create(T t);
	
	// ɾ
	public int delete(int id);
	
	// ��
	public int update(T t);
	
	// ��
	public T select(int id);
}