package com.wuxincheng.manage.controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wuxincheng.manage.model.Request;
import com.wuxincheng.manage.service.RequestService;
import com.wuxincheng.manage.util.Validation;

/**
 * 访问查询
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/manage/request")
public class RequestController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(RequestController.class);
	
	/** 每页显示条数 */
	private final Integer pageSize = 100;
	
	@Autowired private RequestService requestService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request, String currentPage, Model model, Request query) {
		setMenuFlag(request, "request");
		
		if (Validation.isBlank(currentPage) || !Validation.isInt(currentPage, "0+")) {
			currentPage = "1";
		}
		
		Integer current = Integer.parseInt(currentPage);
		Integer start = null;
		Integer end = null;
		if (current > 1) {
			start = (current - 1) * pageSize;
			end = pageSize;
		} else {
			start = 0;
			end = pageSize;
		}
		
		Map<String, Object> pager = requestService.queryPager(start, end, query);
		
		try {
			if (pager != null && pager.size() > 0) {
				pager.put("currentPage", currentPage);
				pager.put("pageSize", pageSize);
				
				Integer totalCount = (Integer)pager.get("totalCount");
				Integer lastPage = (totalCount/pageSize);
				Integer flag = (totalCount%pageSize)>0?1:0;
				pager.put("lastPage", lastPage + flag);
				model.addAttribute("pager", pager);
			} else {
				model.addAttribute("pojoList", Collections.EMPTY_LIST);
			}
		} catch (Exception e) {
			logger.error("在查询访问明细时出现异常", e);
		}
		
		return "request/list";
	}
	
	/**
	 * 统计
	 * 
	 * @return
	 */
	@RequestMapping(value = "/countBySocial")
	public String countBySocial(String blogId, Model model) {
		List<Map<String, String>> socials = null;
		
		if (!Validation.isBlank(blogId)) {
			socials = requestService.countBySocial(blogId);
		} 
		
		model.addAttribute("socials", socials);
		
		return "request/social_count";
	}
	
	/**
	 * 更新IpAddress
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateIpAddress")
	public String updateIpAddress(HttpServletRequest request, Model model) {
		logger.info("处理空IP区域");
		
		requestService.updateNullIpAddress();
		
		logger.info("空IP区域处理完成");
		
		return list(request, "1", model, null);
	}
	
}
