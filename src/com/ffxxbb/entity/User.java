package com.ffxxbb.entity;

import java.util.Date;

import javax.persistence.*;


@Entity
@Table(name="user")
public class User implements java.io.Serializable{
	
	private long id;
	
	private String username;
	
	private String password;
	
	private String email;
	
	private Date birthdate;
	
	private String phone;
	
    private int sex;
    
    private String nickname;
    
    private String question;
    private String answer;

    @Id
	@Column(name = "ID", nullable = false, unique = true, insertable = true, updatable = true , precision = 16, scale = 0)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "username", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "email", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "birthdate", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	@Column(name = "phone", nullable = true, unique = false, insertable = true, updatable = true , length = 20)
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "sex", nullable = true, unique = false, insertable = true, updatable = true , length = 2)
	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	@Column(name = "nickname", nullable = true, unique = false, insertable = true, updatable = true , length = 20)

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Column(name = "question", nullable = true, unique = false, insertable = true, updatable = true , length = 20)

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "answer", nullable = true, unique = false, insertable = true, updatable = true , length = 20)

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
    
    
    
}
