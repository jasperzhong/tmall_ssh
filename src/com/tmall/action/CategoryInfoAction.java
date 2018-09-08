package com.tmall.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.tmall.entity.Category;
import com.tmall.dao.CategoryDAO;
import com.tmall.dao.impl.CategoryDAOImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryInfoAction extends ActionSupport implements RequestAware {
	
	Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;		
	}
	
	public String execute()  {
		CategoryDAO categoryDAO = new CategoryDAOImpl();
		List<Category> categoryList = categoryDAO.selectAll();
		if (categoryList.size()>0) {
			request.put("categoryList", categoryList);
		}		
		return SUCCESS;
	}


	
}
