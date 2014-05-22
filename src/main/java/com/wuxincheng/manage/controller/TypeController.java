package com.wuxincheng.manage.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.manage.model.Type;
import com.wuxincheng.manage.service.TypeService;
import com.wuxincheng.manage.util.Constants;

/**
 * 博客类别管理
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/manage/type")
public class TypeController extends BaseController {
	
	private static Logger logger = LoggerFactory.getLogger(TypeController.class);
	
	@Autowired private TypeService typeService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request, Model model) {
		logger.info("显示博客类别列表页面");
		setMenuFlag(request, "type");
		
		List<Type> types = typeService.queryAll();
		try {
			if (types != null && types.size() > 0) {
				model.addAttribute("types", types);
			} else {
				model.addAttribute("types", Collections.EMPTY_LIST);
				logger.info("没有查询到博客类别信息");
			}
		} catch (Exception e) {
			logger.error("在查询博客类别明细时出现异常", e);
		}
		
		return "type/list";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/edit")
	public String edit(@RequestParam String typeId, Model model) {
		if (StringUtils.isEmpty(typeId)) { // 
			logger.info("显示博客类别新增页面");
		} else {
			logger.info("显示博客类别修改页面");
			
			Type type = null;
			logger.info("修改博客类别的编号: " + typeId);
			
			type = typeService.queryTypeId(typeId);
			
			model.addAttribute("type", type);
		}
		
		return "type/edit";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/doEdit")
	public String doEdit(HttpServletRequest request, Type type, Model model) {
		logger.info("处理编辑博客数据");
		
		try {
			typeService.edit(type);
			
			model.addAttribute(Constants.MSG_TYPE_SUCCESS, "类别编辑成功");
		} catch (Exception e) {
			logger.error("在编辑博客时出现异常: ", e);
			model.addAttribute(Constants.MSG_TYPE_DANGER, "博客类别编辑时出现异常，请联系管理员");
		}
		
		return list(request, model);
	}

}
