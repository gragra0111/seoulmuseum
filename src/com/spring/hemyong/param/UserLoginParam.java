package com.spring.hemyong.param;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserLoginParam implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 616403210285549575L;

	private String id;
    
	private String password;
	
	private boolean rememberId;
}
