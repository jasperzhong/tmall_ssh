package com.tmall.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor{
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception{
		ActionContext ctx = invocation.getInvocationContext();
        Map<String,Object> session = ctx.getSession();
        String usr = (String) session.get("CURRENT_USER");
        if(usr == null){
            return Action.INPUT;
        }
        else {
            return invocation.invoke();
        }
	}
}
