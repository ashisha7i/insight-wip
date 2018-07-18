package com.littlesteps.insight.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class UserMaster {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	Integer userId;
	
	String userName;
	String password;
	String enabled;
	
	@OneToMany(mappedBy = "userId", fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	List<UserAuthorities> authorities;
	
	@OneToMany(mappedBy = "userId", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	List<UserDetails> userDetails;
	
	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}
	
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the enabled
	 */
	public String getEnabled() {
		return enabled;
	}

	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	
	/**
	 * @return the authorities
	 */
	public List<UserAuthorities> getAuthorities() {
		return authorities;
	}

	
	/**
	 * @param authorities the authorities to set
	 */
	public void setAuthorities(List<UserAuthorities> authorities) {
		this.authorities = authorities;
	}

	

	
	/**
	 * @param userDetails the userDetails to set
	 */
	public void setUserDetails(List<UserDetails> userDetails) {
		this.userDetails = userDetails;
	}

	
	/**
	 * @return the userDetails
	 */
	public List<UserDetails> getUserDetails() {
		return userDetails;
	}
	
	
	
}
