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
	
	/**
	 * 查询访问时报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryHoursReport();
	
	/**
	 * 查询访问IP报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryIPReport();
	
	/**
	 * 查询境内访问报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryChinaReport();
	
	/**
	 * 查询境内访外报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryUnChinaReport();
	
	/**
	 * 查询境内外访外报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryRequestReport();
	
}
