package com.last.common.vo;

import java.sql.Date;

public class Notice1VO {
	
	private String title;
	private String adminCode;
	private String noticeCode;
	private String noticeContent;
	private byte[] attachFile;	//첨부파일
	private Date enrollDate;
	private Date registDate;
	
	
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAdminCode() {
		return adminCode;
	}
	public void setAdminCode(String adminCode) {
		this.adminCode = adminCode;
	}
	public String getNoticeCode() {
		return noticeCode;
	}
	
	public byte[] getAttachFile() {
		return attachFile;
	}
	public void setAttachFile(byte[] attachFile) {
		this.attachFile = attachFile;
	}
	
	public void setNoticeCode(String noticeCode) {
		this.noticeCode = noticeCode;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	
}
