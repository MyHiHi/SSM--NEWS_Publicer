package com.itheima.po;

import java.sql.Timestamp;
import java.util.Date;

public class ITNews {
	private Integer id;
	private String content;
	private String type;
	private String isTop;
	private String title;
	private Timestamp okTime;
	private String author;
	private Integer isDelete;
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public Timestamp getOkTime() {
		return okTime;
	}
	public void setOkTime(Timestamp timestamp) {
		this.okTime = timestamp;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIsTop() {
		return isTop;
	}
	public void setIsTop(String isTop) {
		this.isTop = isTop;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
