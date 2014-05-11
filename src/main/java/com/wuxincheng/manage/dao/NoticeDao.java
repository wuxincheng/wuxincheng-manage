package com.wuxincheng.manage.dao;

import java.util.List;

import com.wuxincheng.manage.model.Notice;

/**
 * 通告管理
 * 
 * @author wuxincheng
 *
 */
public interface NoticeDao {

	/**
	 * 查询所有信息
	 * 
	 * @return
	 */
	public abstract List<Notice> queryAll();
	
	/**
	 * 根据主键查询
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract Notice queryByNoticeId(String noticeId);
	
	/**
	 * 添加
	 * 
	 * @param blogInfo
	 */
	public abstract void insert(Notice notice);
	
	/**
	 * 查询最大ID值
	 * 
	 * @return
	 */
	public abstract Integer queryMaxId();

	/**
	 * 更新
	 * 
	 * @param blogInfo
	 */
	public abstract void update(Notice notice);
	
	/**
	 * 删除
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract Integer delete(String noticeId);
	
}
