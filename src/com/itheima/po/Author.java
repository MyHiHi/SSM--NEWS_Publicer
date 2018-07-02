package com.itheima.po;

public class Author {
	private Integer id;
	private String name;
	private Integer likes;
	private Integer follows;
	private Integer articles;
	private String signature;
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getLikes() {
		return likes;
	}
	public void setLikes(Integer likes) {
		this.likes = likes;
	}
	public int getFollows() {
		return follows;
	}
	public void setFollows(Integer follows) {
		this.follows = follows;
	}
	public int getArticles() {
		return articles;
	}
	public void setArticles(Integer articles) {
		this.articles = articles;
	}
	
}
