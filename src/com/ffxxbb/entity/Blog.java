package com.ffxxbb.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="article")
public class Blog {

     private int id;
     
     private String title;
     
     private String content;
     
     private String username;
     
     private Date date;
     
     private int hasread;

     @Id
 	@Column(name = "ID", nullable = false, unique = true, insertable = true, updatable = true , precision = 16, scale = 0)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@Column(name = "title", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", nullable = true, unique = false, insertable = true, updatable = true , length = 2000)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "username", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "date", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "hasread", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public int getHasread() {
		return hasread;
	}

	public void setHasread(int hasread) {
		this.hasread = hasread;
	}
     
     
     
}
