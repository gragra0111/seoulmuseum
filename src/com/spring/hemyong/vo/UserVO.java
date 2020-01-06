package com.spring.hemyong.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserVO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8359611843208894638L;

	private String id;
    
	private String password;
    
	private String name;
	
	private String birth;
	
	private Boolean isSolar;
	
	private String sex;
	
	private String mobile;
	
	private String email;
}
