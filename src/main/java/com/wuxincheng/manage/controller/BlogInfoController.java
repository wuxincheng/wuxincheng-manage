package com.wuxincheng.manage.controller;

import java.util.Collections;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.manage.model.BlogInfo;
import com.wuxincheng.manage.model.Type;
import com.wuxincheng.manage.service.BlogInfoService;
import com.wuxincheng.manage.service.TypeService;
import com.wuxincheng.manage.util.Constants;

/**
 * 博客管理
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/blogInfo")
public class BlogInfoController {

	private static Logger logger = LoggerFactory.getLogger(BlogInfoController.class);
	
	@Autowired private BlogInfoService blogInfoService;
	@Autowired private TypeService typeService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(Model model) {
		logger.info("显示博客列表页面");
		
		List<BlogInfo> blogInfos = blogInfoService.queryAll();
		try {
			if (blogInfos != null && blogInfos.size() > 0) {
				model.addAttribute("blogInfos", blogInfos);
			} else {
				model.addAttribute("blogInfos", Collections.EMPTY_LIST);
				logger.info("没有查询到博客信息");
			}
		} catch (Exception e) {
			logger.error("在查询博客明细时出现异常", e);
		}
		
		return "info/list";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/edit")
	public String edit(@RequestParam String blogId, Model model) {
		List<Type> types = typeService.queryAll();
		
		if (StringUtils.isEmpty(blogId)) { // 
			logger.info("显示博客新增页面");
		} else {
			logger.info("修改博客的编号: " + blogId);
			
			logger.info("显示博客修改页面");
		}
		
		model.addAttribute("types", types);
		
		return "info/edit";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/doEdit")
	public String doEdit(BlogInfo blogInfo, Model model) {
		logger.info("处理编辑博客数据");
		
		try {
			blogInfoService.insert(blogInfo);
			
			model.addAttribute(Constants.MSG_TYPE_SUCCESS, "博客添加成功");
		} catch (Exception e) {
			logger.error("在编辑博客时出现异常: ", e);
			model.addAttribute(Constants.MSG_TYPE_DANGER, "博客添加时出现异常，请联系管理员");
		}
		
		return list(model);
	}
	
}
