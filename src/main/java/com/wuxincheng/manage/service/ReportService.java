package com.wuxincheng.manage.service;

import java.util.List;

import com.wuxincheng.manage.model.Report;

public interface ReportService {
	
	/**
	 * 查询访问日报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryDailyReport();
	
}
