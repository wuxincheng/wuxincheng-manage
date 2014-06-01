package com.wuxincheng.manage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wuxincheng.manage.model.Report;
import com.wuxincheng.manage.service.ReportService;

/**
 * 报表
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/manage/report")
public class ReportController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired private ReportService reportService;
	
	/**
	 * 日报表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/daily")
	public String list(HttpServletRequest request, Model model) {
		logger.info("访问日报表");
		setMenuFlag(request, "reportDaily");
		
		List<Report> dataList = reportService.queryDailyReport();
		
		model.addAttribute("dataList", dataList);
		
		return "report/daily";
	}
	
}
