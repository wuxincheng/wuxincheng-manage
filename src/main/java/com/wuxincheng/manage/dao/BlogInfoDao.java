package com.wuxincheng.manage.dao;

import java.util.List;

import com.wuxincheng.manage.model.BlogInfo;

/**
 * 博客信息Dao接口
 * 
 * @author wuxincheng
 *
 */
public interface BlogInfoDao {

	/**
	 * 查询所有文件信息
	 * 
	 * @return
	 */
	public abstract List<BlogInfo> queryAll();
	
	/**
	 * 根据主键查询
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract BlogInfo queryByBlogId(String blogId);
	
	/**
	 * 添加
	 * 
	 * @param blogInfo
	 */
	public abstract void insert(BlogInfo blogInfo);
	
	/**
	 * 查询最大ID值
	 * 
	 * @return
	 */
	public abstract Integer queryMaxId();
	
}
