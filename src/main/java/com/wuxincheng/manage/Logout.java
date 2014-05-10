package com.wuxincheng.manage;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/logout")
public class Logout {

	private static Logger logger = LoggerFactory.getLogger(Logout.class);
	
	@RequestMapping(value = "/showLoginUI")
	public String showloginUI(HttpServletRequest request, Model model) {
		logger.info("退出系统");
		
		request.getSession().removeAttribute("admins");
		
		return "login";
	}
	
}
