package com.tmall.dao;

import java.util.List;
import com.tmall.entity.Category;

public interface CategoryDAO extends BaseDAO<Category>  {
	
	// ��������category
	public List<Category> selectAll();
}
