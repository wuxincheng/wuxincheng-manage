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

import com.wuxincheng.manage.model.Notice;
import com.wuxincheng.manage.service.NoticeService;
import com.wuxincheng.manage.util.Constants;

/**
 * 通告管理
 * 
 * @author wuxincheng
 *
 */
@Controller
@RequestMapping("/manage/notice")
public class NoticeController extends BaseController {

	private static Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired private NoticeService noticeService;
	
	/**
	 * 显示列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request, Model model) {
		logger.info("显示通告列表页面");
		setMenuFlag(request, "notice");
		
		List<Notice> notices = noticeService.queryAll();
		try {
			if (notices != null && notices.size() > 0) {
				model.addAttribute("notices", notices);
			} else {
				model.addAttribute("notices", Collections.EMPTY_LIST);
				logger.info("没有查询到通告信息");
			}
		} catch (Exception e) {
			logger.error("在查询通告明细时出现异常", e);
		}
		
		return "notice/list";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/edit")
	public String edit(@RequestParam String noticeId, Model model) {
		if (StringUtils.isEmpty(noticeId)) { // 
			logger.info("显示公告新增页面");
		} else {
			logger.info("显示公告修改页面");
			
			Notice notice = null;
			logger.info("修改通告的编号: " + noticeId);
			
			notice = noticeService.queryByNoticeId(noticeId);
			
			model.addAttribute("notice", notice);
		}
		
		return "notice/edit";
	}
	
	/**
	 * 编辑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/doEdit")
	public String doEdit(HttpServletRequest request, Notice notice, Model model) {
		logger.info("处理编辑通告数据");
		
		try {
			noticeService.edit(notice);
			
			model.addAttribute(Constants.MSG_TYPE_SUCCESS, "博客通告成功");
		} catch (Exception e) {
			logger.error("在编辑通告时出现异常: ", e);
			model.addAttribute(Constants.MSG_TYPE_DANGER, "通告编辑时出现异常，请联系管理员");
		}
		
		return list(request, model);
	}
	
	/**
	 * 删除
	 * 
	 * @param blogId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request, @RequestParam String noticeId, Model model) {
		if (StringUtils.isEmpty(noticeId)) { // 
			logger.warn("通告不存在，删除失败 blogId: " + noticeId);
			model.addAttribute(Constants.MSG_TYPE_WARNING, "通告不存在，删除失败");
		} else {
			logger.info("删除通告的编号 blogId: " + noticeId);
			
			boolean deleteFlag = noticeService.delete(noticeId);
			
			if (deleteFlag) {
				model.addAttribute(Constants.MSG_TYPE_SUCCESS, "通告删除成功");
			} else {
				model.addAttribute(Constants.MSG_TYPE_WARNING, "通告删除失败，请重试");
			}
		}
		
		return list(request, model);
	}
	
}
