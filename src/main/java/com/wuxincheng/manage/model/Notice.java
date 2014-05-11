package com.wuxincheng.manage.model;

import java.io.Serializable;

/**
 * 通告
 * 
 * @author wuxincheng
 *
 */
public class Notice implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer noticeId;
	
	private String noticeTitle;
	
	private String noticeContent;
	
	private String createTime;
	
	private String state;

	public Integer getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Integer noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
