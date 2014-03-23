package com.wuxincheng.manage.admins.info.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.manage.admins.info.dao.TypeDao;
import com.wuxincheng.manage.admins.info.model.Type;
import com.wuxincheng.manage.admins.info.service.TypeService;

@Service("typeService")
public class TypeServiceImpl implements TypeService {

	@Resource private TypeDao typeDao;
	
	@Override
	public List<Type> queryAll() {
		return typeDao.queryAll();
	}

}
