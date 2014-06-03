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
	 * 境内外访问统计报表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/china")
	public String china(HttpServletRequest request, Model model) {
		logger.info("境内外访问统计报表");
		setMenuFlag(request, "reportChina");
		
		List<Report> requestList = reportService.queryRequestReport();
		Integer rrsum = 0;
		for (Report report : requestList) {
			rrsum = rrsum + report.getRequestSum();
		}
		model.addAttribute("rrsum", rrsum);
		
		List<Report> chinaList = reportService.queryChinaReport();
		List<Report> unChinaList = reportService.queryUnChinaReport();
		
		model.addAttribute("requestList", requestList);
		model.addAttribute("chinaList", chinaList);
		model.addAttribute("unChinaList", unChinaList);
		
		return "report/china";
	}
	
	/**
	 * IP访问统计报表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/IP")
	public String IP(HttpServletRequest request, Model model) {
		logger.info("IP访问统计报表");
		setMenuFlag(request, "reportIP");
		
		List<Report> dataList = reportService.queryIPReport();
		
		model.addAttribute("dataList", dataList);
		
		return "report/IP";
	}
	
	/**
	 * 时报表：即一天24小时每小时访问量统计
	 * 
	 * @return
	 */
	@RequestMapping(value = "/hours")
	public String hours(HttpServletRequest request, Model model) {
		logger.info("访问时报表");
		setMenuFlag(request, "reportHours");
		
		List<Report> dataList = reportService.queryHoursReport();
		
		model.addAttribute("dataList", dataList);
		
		return "report/hours";
	}
	
	/**
	 * 日报表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/daily")
	public String daily(HttpServletRequest request, Model model) {
		logger.info("访问日报表");
		setMenuFlag(request, "reportDaily");
		
		List<Report> dataList = reportService.queryDailyReport();
		
		model.addAttribute("dataList", dataList);
		
		return "report/daily";
	}
	
}
