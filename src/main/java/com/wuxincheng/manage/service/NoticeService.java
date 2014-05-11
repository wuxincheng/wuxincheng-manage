package com.wuxincheng.manage.service;

import java.util.List;

import com.wuxincheng.manage.model.Notice;

public interface NoticeService {

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
	 * 查询最大ID值
	 * 
	 * @return
	 */
	public abstract Integer queryMaxId();

	/**
	 * 编辑
	 * 
	 * @param blogInfo
	 */
	public abstract void edit(Notice notice);
	
	/**
	 * 删除
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract boolean delete(String noticeId);
	
}
