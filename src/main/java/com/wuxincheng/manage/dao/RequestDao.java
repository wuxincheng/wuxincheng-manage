package com.wuxincheng.manage.dao;

import java.util.List;
import java.util.Map;

import com.wuxincheng.manage.model.Request;

public interface RequestDao {

	/**
	 * 分页查询
	 * 
	 * @param start
	 * @param end
	 * @param flag
	 * @return
	 */
	public abstract List<Request> queryPager(Map<String, Object> params);
	
	/**
	 * 统计总记录条数
	 * 
	 * @return
	 */
	public abstract Integer queryCount();
	
	/**
	 * 统计博客访问
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract List<Map<String, String>> countBySocial(String blogId);
	
	/**
	 * 查询IP区域为空数据
	 * 
	 * @param flag
	 * @return
	 */
	public abstract List<Map<String, String>> queryNullIpAddress();
	
	/**
	 * 更新IP区域为空的
	 * 
	 * @param params
	 */
	public abstract void updateIpAddress(Map<String, String> params);

	public abstract void delete(String requestTime);
	
}
