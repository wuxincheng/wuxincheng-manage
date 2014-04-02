package com.wuxincheng.manage.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.TypeDao;
import com.wuxincheng.manage.model.Type;

@Repository("typeDao")
public class TypeDaoImpl extends BaseDao implements TypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Type> queryAll() {
		return this.getSqlMapClientTemplate().queryForList("Type.queryAll");
	}

}
