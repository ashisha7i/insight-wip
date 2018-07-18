package com.littlesteps.insight.dto;

import com.littlesteps.insight.model.UserMaster;

public class UserDetailsDto {
	
	private Integer userId;
	private String userName;
	private String enabled;
	
	public UserDetailsDto() {
		
	}
	
	public UserDetailsDto(UserMaster user) {
		this.userId = user.getUserId();
		this.userName = user.getUserName();
		this.enabled = user.getEnabled();
	}
	
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
	
	
}
