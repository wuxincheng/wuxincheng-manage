package com.wuxincheng.manage;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {
	
	private static Logger logger = LoggerFactory.getLogger(Login.class);
	
	@RequestMapping(value = "/showLoginUI")
	public String showloginUI(Model model) {
		logger.info("显示登录页面");
		
		List<String> backgrounds = new ArrayList<String>();
		
		backgrounds.add(0, "http://www.bz889.com/uploads/allimg/120723/co120H3131240-0.jpg");
		backgrounds.add(1, "http://img.tuku.com/upload/attach/2013/06/94949-7IUzBD6.jpg");
		backgrounds.add(2, "http://www.mtg.net.cn/up2013/201012/10122508526255.jpg");
		backgrounds.add(3, "http://www.meiniu.cc/uploads/allimg/111128/1-11112P95201.jpg");
		
		int randNum = (int) (Math.random() * (backgrounds.size()-1)); // 产生0-1000的整数随机数
		
		logger.info("登录页面背景编号: " + randNum);
		logger.info("登录页面背景地址: " + backgrounds.get(randNum));
		
		model.addAttribute("background", backgrounds.get(randNum));
		
		return "login";
	}
	
	@RequestMapping(value = "/doLogin")
	public String doLogin() {
		logger.info("登录到系统");
		
		return "main";
	}

}
