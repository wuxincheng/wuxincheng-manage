package com.wuxincheng.manage.admins.info.model;

import java.io.Serializable;

/**
 * 博客信息
 * 
 * @author wuxincheng
 * 
 */
public class BlogInfo implements Serializable {

	private static final long serialVersionUID = -1305416709459511421L;

	/** 博客主键 */
	private String blogId;
	
	private String blogTitle;
	/** 博客类型主键 */
	private String blogType;
	/**  */
	private String blogTypeName;

	private String blogContent;

	private String blogTime;

	private Integer readCount;

	private Integer shareCount;

	private String blogState;

	private String picId;

	public BlogInfo() {
	}

	public String getBlogId() {
		return blogId;
	}

	public void setBlogId(String blogId) {
		this.blogId = blogId;
	}

	public String getBlogType() {
		return blogType;
	}

	public void setBlogType(String blogType) {
		this.blogType = blogType;
	}

	public String getBlogTypeName() {
		return blogTypeName;
	}

	public void setBlogTypeName(String blogTypeName) {
		this.blogTypeName = blogTypeName;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public String getBlogTime() {
		return blogTime;
	}

	public void setBlogTime(String blogTime) {
		this.blogTime = blogTime;
	}

	public Integer getReadCount() {
		return readCount;
	}

	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}

	public Integer getShareCount() {
		return shareCount;
	}

	public void setShareCount(Integer shareCount) {
		this.shareCount = shareCount;
	}

	public String getBlogState() {
		return blogState;
	}

	public void setBlogState(String blogState) {
		this.blogState = blogState;
	}

	public String getPicId() {
		return picId;
	}

	public void setPicId(String picId) {
		this.picId = picId;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

}
