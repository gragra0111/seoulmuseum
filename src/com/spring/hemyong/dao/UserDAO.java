package com.spring.hemyong.dao;

import java.util.List;

import com.spring.hemyong.param.UserLoginParam;
import com.spring.hemyong.vo.UserVO;

public interface UserDAO {
	public void create(UserVO vo) throws Exception;
    
	public UserVO read(Integer u_no) throws Exception;
    
	public void delete(UserVO u_no) throws Exception;
    
	public void update(UserVO vo) throws Exception;
	
	public List<UserVO> getUserList() throws Exception;
	
	public UserVO doGetUserInfo(String id) throws Exception;
	
	public int doCreateUser(UserVO vo) throws Exception;
	
	public int doUpdateUser(UserVO vo) throws Exception;
	
	public int doDeleteUser(String id) throws Exception;

	public UserVO doProcessLogin(UserLoginParam param);
}
