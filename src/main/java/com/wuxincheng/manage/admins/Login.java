package com.wuxincheng.manage.admins;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {
	
	private static Logger LOGGER = LoggerFactory.getLogger(Login.class);
	
	@RequestMapping(value = "/showLoginUI")
	public String showloginUI() {
		LOGGER.info("显示登录页面");
		
		return "login";
	}
	
	@RequestMapping(value = "/doLogin")
	public String doLogin() {
		LOGGER.info("登录到系统");
		
		return "main";
	}

}
