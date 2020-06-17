package booksManager.com.Controllers;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import booksManager.com.Entities.User;
import booksManager.com.Services.AuthenticationService.LoginService;

public class LoginController extends ActionSupport implements SessionAware {
	
	private String email;
	private String password;
	private boolean error;
	private boolean notifLogin;
	private String role;
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isNotifLogin() {
		return notifLogin;
	}
	public void setNotifLogin(boolean notifLogin) {
		this.notifLogin = notifLogin;
	}
	@Autowired
	private LoginService loginService;
	private Map<String, Object> session;

	
	
	
	public LoginService getLoginService() {
		return loginService;
	}
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

	
	public boolean isError() {
		return error;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	public String logout() throws Exception{
		this.session.remove("loged");
		return "success";
	}
	
	public String execute() throws Exception {
		System.out.println(email);
		this.role = loginService.login(email, password);
		if (!this.role.equals("null")) {
			User user = new User();
			user.setEmail(email);
			user.setMdp(password);
			user.setRole(role);
			this.session.put("loged",user);
			this.notifLogin = true;
		
			return "success";
		}else {
			this.error = true;
			return "fail";
		}
	}
	@Override
	public void setSession(Map<String, Object> psession) {
		this.session = psession;
	}
	
	
}
