package com.wuxincheng.manage.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wuxincheng.manage.model.Message;
import com.wuxincheng.manage.service.MessageService;

/**
 * 留言信息
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(MessageController.class);
	
	@Autowired private MessageService messageService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request, Model model) {
		logger.info("显示用户留言列表页面");
		setMenuFlag(request, "message");
		
		List<Message> messages = messageService.queryAll();
		try {
			if (messages != null && messages.size() > 0) {
				model.addAttribute("messages", messages);
			} else {
				model.addAttribute("messages", Collections.EMPTY_LIST);
				logger.info("没有查询到用户留言信息");
			}
		} catch (Exception e) {
			logger.error("在查询用户留言列表时出现异常", e);
		}
		
		return "message/list";
	}

	/**
	 * 查看
	 * 
	 * @return
	 */
	@RequestMapping(value = "/show")
	public String show(HttpServletRequest request, @RequestParam String msgId, Model model) {
		if (StringUtils.isEmpty(msgId)) { // 
			logger.info("显示用户留言详细页面 msgId不为空");
			return list(request, model);
		} else {
			logger.info("显示用户留言详细页面");
			
			Message message = null;
			
			message = messageService.queryByMsgId(msgId);
			
			model.addAttribute("message", message);
		}
		
		return "message/show";
	}
	
}
