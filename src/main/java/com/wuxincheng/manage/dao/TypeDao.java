package com.wuxincheng.manage.dao;

import java.util.List;

import com.wuxincheng.manage.model.Type;

/**
 * 类型接口
 * 
 * @author wuxincheng
 *
 */
public interface TypeDao {

	/**
	 * 查询类型信息
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
	public abstract Type queryByTypeId(String typeId);
	
	/**
	 * 添加
	 * 
	 * @param type
	 */
	public abstract void insert(Type type);
	
	/**
	 * 查询最大ID值
	 * 
	 * @return
	 */
	public abstract Integer queryMaxId();

	/**
	 * 更新
	 * 
	 * @param type
	 */
	public abstract void update(Type type);
	
}
