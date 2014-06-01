package com.wuxincheng.manage.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.ReportDao;
import com.wuxincheng.manage.model.Report;

@Repository("reportDao")
public class ReportDaoImpl extends BaseDao implements ReportDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Report> queryDailyReport() {
		return this.getSqlMapClientTemplate().queryForList("Report.queryDailyReport");
	}

}
