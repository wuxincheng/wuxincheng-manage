package com.wuxincheng.manage.admins.info.controller;

import java.util.Collections;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wuxincheng.manage.admins.Login;
import com.wuxincheng.manage.admins.info.model.BlogInfo;
import com.wuxincheng.manage.admins.info.service.BlogInfoService;

/**
 * 博客管理
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/blogInfo")
public class BlogInfoController {

	private static Logger LOGGER = LoggerFactory.getLogger(Login.class);
	
	@Autowired private BlogInfoService blogInfoService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(Model model) {
		LOGGER.info("显示博客列表页面");
		
		List<BlogInfo> blogInfos = blogInfoService.queryAll();
		try {
			if (blogInfos != null && blogInfos.size() > 0) {
				model.addAttribute("blogInfos", blogInfos);
			} else {
				model.addAttribute("blogInfos", Collections.EMPTY_LIST);
				LOGGER.info("没有查询到博客信息");
			}
		} catch (Exception e) {
			LOGGER.error("在查询博客明细时出现异常", e);
		}
		
		return "info/list";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/edit")
	public String edit(Model model) {
		LOGGER.info("显示博客编辑页面");
		return "info/edit";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/doEdit")
	public String doEdit(Model model) {
		LOGGER.info("处理编辑博客数据");
		
		model.addAttribute("success", "博客添加成功");
		
		return list(model);
	}
	
}
