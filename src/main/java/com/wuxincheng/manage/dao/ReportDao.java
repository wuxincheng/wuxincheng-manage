package com.wuxincheng.manage.dao;

import java.util.List;

import com.wuxincheng.manage.model.Report;

public interface ReportDao {

	/**
	 * 查询访问日报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryDailyReport();
	
}
