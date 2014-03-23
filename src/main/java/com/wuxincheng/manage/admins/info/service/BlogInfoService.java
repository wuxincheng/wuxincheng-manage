package com.wuxincheng.manage.admins.info.service;

import java.util.List;

import com.wuxincheng.manage.admins.info.model.BlogInfo;

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
	public abstract void insert(BlogInfo blogInfo);
	
}
