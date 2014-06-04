package com.wuxincheng.manage.model;

import java.io.Serializable;

public class Report implements Serializable {

	private static final long serialVersionUID = 1L;

	// ---
	private String requestDay;
	private String rcount;

	// ---
	private String requestHours;
	private String hcount;

	// ---
	private String requestIP;
	private String ipAddress;
	private String icount;

	// --
	private String ccount;

	// --
	private String uccount;

	// --
	private String jnw;
	private Integer requestSum;

	// --
	private String socialType;
	private Integer scount;

	// ===================

	public String getJnw() {
		return jnw;
	}

	public void setJnw(String jnw) {
		this.jnw = jnw;
	}

	public Integer getRequestSum() {
		return requestSum;
	}

	public void setRequestSum(Integer requestSum) {
		this.requestSum = requestSum;
	}

	public String getCcount() {
		return ccount;
	}

	public void setCcount(String ccount) {
		this.ccount = ccount;
	}

	public String getUccount() {
		return uccount;
	}

	public void setUccount(String uccount) {
		this.uccount = uccount;
	}

	public String getRequestIP() {
		return requestIP;
	}

	public void setRequestIP(String requestIP) {
		this.requestIP = requestIP;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getIcount() {
		return icount;
	}

	public void setIcount(String icount) {
		this.icount = icount;
	}

	public String getRequestHours() {
		return requestHours;
	}

	public void setRequestHours(String requestHours) {
		this.requestHours = requestHours;
	}

	public String getHcount() {
		return hcount;
	}

	public void setHcount(String hcount) {
		this.hcount = hcount;
	}

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

	public String getSocialType() {
		return socialType;
	}

	public void setSocialType(String socialType) {
		this.socialType = socialType;
	}

	public Integer getScount() {
		return scount;
	}

	public void setScount(Integer scount) {
		this.scount = scount;
	}

}
