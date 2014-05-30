package com.wuxincheng.manage.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.RequestDao;
import com.wuxincheng.manage.model.Request;

@Repository("requestDao")
public class RequestDaoImpl extends BaseDao implements RequestDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Request> queryPager(Map<String, Object> params) {
		return this.getSqlMapClientTemplate().queryForList("Request.queryPager", params);
	}

	@Override
	public Integer queryCount() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("Request.queryCount");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, String>> countBySocial(String blogId) {
		return this.getSqlMapClientTemplate().queryForList("Request.countBySocial", blogId);
	}

}
