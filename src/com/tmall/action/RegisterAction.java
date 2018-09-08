package com.tmall.action;

import com.opensymphony.xwork2.ActionSupport;

import com.tmall.entity.User;
import com.tmall.dao.UserDAO;
import com.tmall.dao.impl.UserDAOImpl;

public class RegisterAction extends ActionSupport {
	private User user;
	private String repassword;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	
	public String execute() throws Exception {
		UserDAO ud = new UserDAOImpl();
		int result = ud.create(user);
		
		if(result == 0){
			return INPUT;
		}else{
			return SUCCESS;
		}
	}
	
	// 验证注册信息是否合法
	public void validate(){
		// 登录名不能为空
		if(user.getLogin().length() == 0 || user.getLogin().trim().equals(""))
			addFieldError("user.login", "用户名不能为空");
		
		// 密码长度不得小于7
		if(user.getPassword().length() <= 7)
			addFieldError("user.password", "密码长度至少7位");
		
		// 重复密码
		if(!(user.getPassword().equals(this.getRepassword())))
			addFieldError("repassword","密码不一致");
		
		// 手机
		if(user.getPhone().length() != 11)
			addFieldError("user.phone","手机号不符合要求(11位)");
		
		// 邮箱 
		if(user.getEmail().indexOf('@') == -1)
			addFieldError("uesr.email","请确认邮箱是否正确");
	}
}
