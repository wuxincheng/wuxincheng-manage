package com.wuxincheng.manage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.BlogInfoDao;
import com.wuxincheng.manage.model.BlogInfo;
import com.wuxincheng.manage.service.BlogInfoService;

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
	public void edit(BlogInfo blogInfo) {
		if (blogInfo != null && !"".equals(blogInfo)) {
			
		}
		
		Integer blogId = blogInfo.getBlogId();
		
		if (blogId != null && !"".equals(blogId)) { // 编辑
			
		} else { // 新增
			blogInfo.setBlogId(blogInfoDao.queryMaxId());
			
			
			
			blogInfoDao.insert(blogInfo);
		}
	}

	@Override
	public BlogInfo queryByBlogId(String blogId) {
		return blogInfoDao.queryByBlogId(blogId);
	}
	
}
