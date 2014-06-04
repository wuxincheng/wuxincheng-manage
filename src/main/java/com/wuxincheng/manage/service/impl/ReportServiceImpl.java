package com.wuxincheng.manage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.ReportDao;
import com.wuxincheng.manage.model.Report;
import com.wuxincheng.manage.service.ReportService;

@Service("reportService")
public class ReportServiceImpl implements ReportService {

	@Resource ReportDao reportDao;

	@Override
	public List<Report> queryDailyReport() {
		return reportDao.queryDailyReport();
	}

	@Override
	public List<Report> queryHoursReport() {
		return reportDao.queryHoursReport();
	}

	@Override
	public List<Report> queryIPReport() {
		return reportDao.queryIPReport();
	}

	@Override
	public List<Report> queryChinaReport() {
		return reportDao.queryChinaReport();
	}

	@Override
	public List<Report> queryUnChinaReport() {
		return reportDao.queryUnChinaReport();
	}

	@Override
	public List<Report> queryRequestReport() {
		return reportDao.queryRequestReport();
	}

	@Override
	public List<Report> querySocialReport() {
		return reportDao.querySocialReport();
	}
	
}
