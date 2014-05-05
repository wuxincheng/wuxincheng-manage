package com.wuxincheng.manage.service;

import java.util.List;

import com.wuxincheng.manage.model.Type;

public interface TypeService {

	/**
	 * 查询博客信息
	 * 
	 * @return
	 */
	public abstract List<Type> queryAll();
	
	/**
	 * 根据主键查询
	 * 
	 * @param typeId
	 * @return
	 */
	public abstract Type queryTypeId(String typeId);

	/**
	 * 编辑
	 * 
	 * @param type
	 */
	public abstract void edit(Type type);
	
}
