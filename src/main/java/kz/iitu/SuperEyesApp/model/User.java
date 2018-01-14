package kz.iitu.SuperEyesApp.model;

import javax.persistence.Entity;
import javax.persistence.Table;

//@Entity
//@Table(name="users")
public class User {

	private Integer id;
	private String username;
	private String password;
	private boolean isActive;
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;
		this.isActive = true;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	
}
