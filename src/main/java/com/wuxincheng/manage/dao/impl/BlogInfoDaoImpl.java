package com.wuxincheng.manage.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.BlogInfoDao;
import com.wuxincheng.manage.model.BlogInfo;

@Repository("blogInfoDao")
public class BlogInfoDaoImpl extends BaseDao implements BlogInfoDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<BlogInfo> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("BlogInfo.queryAll");
	}

	@Override
	public void insert(BlogInfo blogInfo) {
		this.getSqlMapClientTemplate().insert("BlogInfo.insert", blogInfo);
	}

	@Override
	public Integer queryMaxId() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("BlogInfo.queryMaxId");
	}

	@Override
	public BlogInfo queryByBlogId(String blogId) {
		return (BlogInfo) this.getSqlMapClientTemplate().queryForObject("BlogInfo.queryByBlogId", blogId);
	}

	@Override
	public void update(BlogInfo blogInfo) {
		this.getSqlMapClientTemplate().insert("BlogInfo.update", blogInfo);
	}

}
