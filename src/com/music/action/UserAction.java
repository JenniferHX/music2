package com.music.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.mail.Session;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.music.dao.*;
import com.music.model.*;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class UserAction extends ActionSupport implements SessionAware{
	/*ҵ���*/
	@Resource UserDao userDao;
	//这两个变量是用来做登录拦截的
	private Map<String,Object> session;
	private String prePage;
	
	private User user;	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String addUser() throws Exception{
		userDao.AddUser(user);
		return "message_user";
		
	}
	public String reg() throws Exception{
		userDao.AddUser(user);
		return "login_message";
	}
    public String getPrePage() {
		return prePage;
	}
	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	
	/* ��֤�û���¼ */
	public String login(){
		User db_user=userDao.QueryUserInfo(user.getUsername());
		if(db_user == null) { 
			this.errMessage = " 账号不存在 ";
			System.out.print(this.errMessage);
			return INPUT;
		}
		else if(!db_user.getPassword().equals(user.getPassword())) {
			this.errMessage = " 密码不正确! ";
			System.out.print(this.errMessage);
			return INPUT;
		}else{
		session.put("user", db_user);
		prePage = (String) Session.get("prePage");
		System.out.println("将要跳到" + prePage);
		session.remove("prePage");
		return "login_message";
		}
	}
	public void setSession(Map<String, Object> arg0) {
		session=arg0;
	}
	/*
	 * <s:if test="<s:property value='#session.user'/>==null">
  <a href="login.jsp">��¼</a> 
  <a href="reg.jsp">ע��</a>
  </s:if>
  <s:else>
  <s:property value="#session.user.username"/>��ӭ��!
  </s:else>
	 */
}
