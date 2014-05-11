package com.wuxincheng.manage.service;

import java.util.List;

import com.wuxincheng.manage.model.Message;

/**
 * 用户留言
 * 
 * @author wuxincheng
 *
 */
public interface MessageService {

	/**
	 * 查询所有信息
	 * 
	 * @return
	 */
	public abstract List<Message> queryAll();
	
	/**
	 * 根据主键查询
	 * 
	 * @param msgId
	 * @return
	 */
	public abstract Message queryByMsgId(String msgId);
	
}
