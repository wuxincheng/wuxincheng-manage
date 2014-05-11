package com.wuxincheng.manage.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.NoticeDao;
import com.wuxincheng.manage.model.Notice;

/**
 * 通告
 * 
 * @author wuxincheng
 *
 */
@Repository("noticeDao")
public class NoticeDaoImpl extends BaseDao implements NoticeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("Notice.queryAll");
	}

	@Override
	public Notice queryByNoticeId(String noticeId) {
		return (Notice)this.getSqlMapClientTemplate().queryForObject("Notice.queryByNoticeId", noticeId);
	}

	@Override
	public void insert(Notice notice) {
		this.getSqlMapClientTemplate().insert("Notice.insert", notice);
	}

	@Override
	public Integer queryMaxId() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("Notice.queryMaxId");
	}

	@Override
	public void update(Notice notice) {
		this.getSqlMapClientTemplate().insert("Notice.update", notice);
	}

	@Override
	public Integer delete(String noticeId) {
		return (Integer) this.getSqlMapClientTemplate().delete("Notice.delete", noticeId);
	}

}
