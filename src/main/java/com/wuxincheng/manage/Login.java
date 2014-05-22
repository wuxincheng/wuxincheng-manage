package com.wuxincheng.manage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.manage.model.Admins;
import com.wuxincheng.manage.service.AdminsService;
import com.wuxincheng.manage.util.Constants;

@Controller
@RequestMapping("/login")
public class Login {
	
	private static Logger logger = LoggerFactory.getLogger(Login.class);
	
	@Autowired private AdminsService adminsService;
	
	@RequestMapping(value = "/showLoginUI")
	public String showloginUI(Model model) {
		logger.info("显示后台管理登录页面");
		
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
	public String doLogin(HttpServletRequest request, Model model,
			@RequestParam String adminsLogin, @RequestParam String adminsPwd) {
		logger.info("登录到系统");
		
		if (null == adminsLogin || "".equals(adminsLogin) || null == adminsPwd || "".equals(adminsPwd)) {
			model.addAttribute(Constants.MSG_TYPE_WARNING, "用户名和密码都不能为空");
			return "login";
		}
		
		Admins admins = adminsService.login(adminsLogin, adminsPwd);
		
		if (admins != null) {
			request.getSession().setAttribute("admins", admins);
		} else {
			model.addAttribute(Constants.MSG_TYPE_WARNING, "用户名或密码输入错误");
			return "login";
		}
		
		return "main";
	}

}
