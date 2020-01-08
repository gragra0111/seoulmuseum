package com.spring.hemyong.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AuthInfoDTO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7476384319825288805L;

	private String id;
    
	private String name;
}
