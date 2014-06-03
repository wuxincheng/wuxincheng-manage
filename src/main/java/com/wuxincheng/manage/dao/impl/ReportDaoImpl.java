package com.wuxincheng.manage.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.ReportDao;
import com.wuxincheng.manage.model.Report;

@SuppressWarnings("unchecked")
@Repository("reportDao")
public class ReportDaoImpl extends BaseDao implements ReportDao {

	@Override
	public List<Report> queryDailyReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryDailyReport");
	}

	
	@Override
	public List<Report> queryHoursReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryHoursReport");
	}

	@Override
	public List<Report> queryIPReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryIPReport");
	}

	@Override
	public List<Report> queryChinaReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryChinaReport");
	}

	@Override
	public List<Report> queryUnChinaReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryUnChinaReport");
	}


	@Override
	public List<Report> queryRequestReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryRequestReport");
	}

}
