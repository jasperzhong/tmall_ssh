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
	
	// ��֤ע����Ϣ�Ƿ�Ϸ�
	public void validate(){
		// ��¼������Ϊ��
		if(user.getLogin().length() == 0 || user.getLogin().trim().equals(""))
			addFieldError("user.login", "�û�������Ϊ��");
		
		// ���볤�Ȳ���С��7
		if(user.getPassword().length() <= 7)
			addFieldError("user.password", "���볤������7λ");
		
		// �ظ�����
		if(!(user.getPassword().equals(this.getRepassword())))
			addFieldError("repassword","���벻һ��");
		
		// �ֻ�
		if(user.getPhone().length() != 11)
			addFieldError("user.phone","�ֻ��Ų�����Ҫ��(11λ)");
		
		// ���� 
		if(user.getEmail().indexOf('@') == -1)
			addFieldError("uesr.email","��ȷ�������Ƿ���ȷ");
	}
}
