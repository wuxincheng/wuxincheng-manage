package com.wuxincheng.manage.service;

import java.util.List;

import com.wuxincheng.manage.model.BlogInfo;

/**
 * 博客信息Service接口
 * 
 * @author wuxincheng
 *
 */
public interface BlogInfoService {

	/**
	 * 查询博客信息
	 * 
	 * @return
	 */
	public abstract List<BlogInfo> queryAll();
	
	/**
	 * 添加
	 * 
	 * @param blogInfo
	 */
	public abstract void edit(BlogInfo blogInfo);
	
	/**
	 * 根据主键查询
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract BlogInfo queryByBlogId(String blogId);
	
}
