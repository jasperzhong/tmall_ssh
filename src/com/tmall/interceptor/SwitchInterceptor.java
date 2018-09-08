package com.tmall.interceptor;

import java.util.Locale;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;


public class SwitchInterceptor extends AbstractInterceptor{
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception{
		ActionContext ac = invocation.getInvocationContext();
		Map session = ac.getSession();
		Locale locale = (Locale)session.get("WW_TRANS_I18N_LOCALE");
		if(locale == null){
			locale = new Locale("zh","CN");
			session.put("WW_TRANS_I18N_LOCALE", locale);
		}
		
		return invocation.invoke();
	}
}
