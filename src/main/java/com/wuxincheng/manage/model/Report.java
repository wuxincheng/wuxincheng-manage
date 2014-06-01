package com.wuxincheng.manage.model;

import java.io.Serializable;

public class Report implements Serializable {

	private static final long serialVersionUID = 1L;

	private String requestDay;
	private String rcount;

	public String getRequestDay() {
		return requestDay;
	}

	public void setRequestDay(String requestDay) {
		this.requestDay = requestDay;
	}

	public String getRcount() {
		return rcount;
	}

	public void setRcount(String rcount) {
		this.rcount = rcount;
	}

}
