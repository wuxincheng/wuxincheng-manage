package com.wuxincheng.manage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.wuxincheng.manage.dao.NoticeDao;
import com.wuxincheng.manage.model.Notice;
import com.wuxincheng.manage.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	
	private static Logger logger = LoggerFactory.getLogger(NoticeServiceImpl.class);

	@Resource private NoticeDao noticeDao;

	@Override
	public List<Notice> queryAll() {
		return noticeDao.queryAll();
	}

	@Override
	public Notice queryByNoticeId(String noticeId) {
		return noticeDao.queryByNoticeId(noticeId);
	}

	@Override
	public Integer queryMaxId() {
		return noticeDao.queryMaxId();
	}
	
	@Override
	public void edit(Notice notice) {
		logger.info("编辑通告信息");
		
		noticeDao.insert(notice);
		
		noticeDao.update(notice);		
	}

	@Override
	public boolean delete(String noticeId) {
		boolean deleteFlag = false;
		Integer flag = noticeDao.delete(noticeId);
		if (flag > 0) {
			deleteFlag = true;
		}
		return deleteFlag;
	}

}
