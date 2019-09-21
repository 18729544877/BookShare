package com.linksky.ssh.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
private HttpServletRequest request;
private HttpServletResponse response;
public  BaseAction()  {
	this.request=ServletActionContext.getRequest();
	this.response=ServletActionContext.getResponse();

}

public HttpServletRequest getRequest() {
	return request;
}

public HttpServletResponse getResponse() {
	return response;
}


HttpSession getSession() {
	return this.request.getSession();
} 
}
