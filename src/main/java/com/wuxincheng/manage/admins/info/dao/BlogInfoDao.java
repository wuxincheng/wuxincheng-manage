package com.wuxincheng.manage.admins.info.dao;

import java.util.List;

import com.wuxincheng.manage.admins.info.model.BlogInfo;

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
	
}
