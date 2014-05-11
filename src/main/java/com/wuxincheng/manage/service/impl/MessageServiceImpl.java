package com.wuxincheng.manage.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.wuxincheng.manage.dao.MessageDao;
import com.wuxincheng.manage.model.Message;
import com.wuxincheng.manage.service.MessageService;

/**
 * 用户留言
 * 
 * @author wuxincheng
 *
 */
@Repository("messageService")
public class MessageServiceImpl implements MessageService {
	
	@Resource MessageDao messageDao;

	@Override
	public List<Message> queryAll() {
		return messageDao.queryAll();
	}

	@Override
	public Message queryByMsgId(String msgId) {
		return messageDao.queryByMsgId(msgId);
	}

	
}
