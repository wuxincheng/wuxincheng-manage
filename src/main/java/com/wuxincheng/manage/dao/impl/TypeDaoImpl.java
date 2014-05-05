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

	@Override
	public Type queryByTypeId(String typeId) {
		return (Type) this.getSqlMapClientTemplate().queryForObject("Type.queryByTypeId", typeId);
	}

	@Override
	public void insert(Type type) {
		this.getSqlMapClientTemplate().insert("Type.insert", type);
	}

	@Override
	public Integer queryMaxId() {
		return (Integer)this.getSqlMapClientTemplate().queryForObject("Type.queryMaxId");
	}

	@Override
	public void update(Type type) {
		this.getSqlMapClientTemplate().insert("Type.update", type);
	}

}
