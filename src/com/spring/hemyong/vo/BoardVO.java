package com.spring.hemyong.vo;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

@Data
public class BoardVO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6517054841289379494L;

	private int no;
    
	private String title;
    
	private String detail;
    
	private String writer;
    
	private Date date;
    
	private int count;
}
