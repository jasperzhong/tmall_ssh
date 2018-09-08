package com.tmall.dao;

import java.util.List;
import com.tmall.entity.Category;

public interface CategoryDAO extends BaseDAO<Category>  {
	
	// ·µ»ØËùÓĞcategory
	public List<Category> selectAll();
}
