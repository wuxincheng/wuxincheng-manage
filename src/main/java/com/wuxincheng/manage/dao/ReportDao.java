package com.wuxincheng.manage.dao;

import java.util.List;

import com.wuxincheng.manage.model.Report;

/**
 * 统计报表
 * 
 * @author wuxincheng
 *
 */
public interface ReportDao {

	/**
	 * 查询访问时报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryHoursReport();
	
	/**
	 * 查询访问日报表
	 * 
	 * @return
	 */
	public abstract List<Report> queryDailyReport();
	
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
	
	/**
	 * 查询社交平台查看统计报表
	 * 
	 * @return
	 */
	public abstract List<Report> querySocialReport();
	
}
