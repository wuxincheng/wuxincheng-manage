package com.wuxincheng.manage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.TypeDao;
import com.wuxincheng.manage.model.Type;
import com.wuxincheng.manage.service.TypeService;

@Service("typeService")
public class TypeServiceImpl implements TypeService {
	
	private static Logger logger = LoggerFactory.getLogger(TypeServiceImpl.class);

	@Resource private TypeDao typeDao;
	
	@Override
	public List<Type> queryAll() {
		return typeDao.queryAll();
	}

	@Override
	public Type queryTypeId(String typeId) {
		return typeDao.queryByTypeId(typeId);
	}

	@Override
	public void edit(Type type) {
		if (null == type) {
			logger.warn("博客类别信息为空type");
			return;
		}
		
		Integer typeId = type.getTypeId();
		
		if (typeId != null && !"".equals(typeId)) { // 更新
			typeDao.update(type);
		} else { // 新增
			typeId = typeDao.queryMaxId();
			type.setTypeId(typeId);
			type.setTypeState("0");
			
			typeDao.insert(type);
		}
	}

}
