package com.wuxincheng.manage.service;

import java.util.Map;

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
	public abstract Map<String, Object> queryPager(int start, int end);
	
}
