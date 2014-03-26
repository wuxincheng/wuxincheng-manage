package com.wuxincheng.manage.admins.info.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.manage.admins.info.dao.BlogInfoDao;
import com.wuxincheng.manage.admins.info.model.BlogInfo;
import com.wuxincheng.manage.admins.info.service.BlogInfoService;

/**
 * 博客信息
 * 
 * @author wuxincheng
 *
 */
@Service("blogInfoService")
public class BlogInfoServiceImpl implements BlogInfoService {

	@Resource private BlogInfoDao blogInfoDao;
	
	@Override
	public List<BlogInfo> queryAll() {
		return blogInfoDao.queryAll();
	}

	@Override
	public void insert(BlogInfo blogInfo) {
		blogInfoDao.insert(blogInfo);
	}

	@Override
	public Integer queryMaxId() {
		return blogInfoDao.queryMaxId();
	}

}
