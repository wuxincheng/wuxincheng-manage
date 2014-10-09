package com.wuxincheng.manage.service;

import java.util.List;
import java.util.Map;

import com.wuxincheng.manage.model.Request;

/**
 * 访问
 * 
 * @author wuxincheng
 *
 */
public interface RequestService {
	
	/**
	 * 分页查询
	 * 
	 * @param start
	 * @param end
	 * @param flag
	 * @return
	 */
	public abstract Map<String, Object> queryPager(int start, int end, Request query);
	
	/**
	 * 统计博客访问
	 * 
	 * @param blogId
	 * @return
	 */
	public abstract List<Map<String, String>> countBySocial(String blogId);
	
	/**
	 * 更新IP区域为空的IP地址
	 */
	public abstract void updateNullIpAddress();
	
	/**
	 * 更新IP区域为空的IP地址
	 */
	public abstract void processNullIpAddressTask() throws Exception;
	
}
