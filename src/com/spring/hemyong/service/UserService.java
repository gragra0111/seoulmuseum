package com.spring.hemyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hemyong.dao.UserDAO;
import com.spring.hemyong.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {
	@Autowired
	private UserDAO userDao;

	public List<UserVO> doGetUserListHandle() throws Exception {
		List<UserVO> list = userDao.getUserList();
		return list;
	}

	public UserVO doGetUserInfoHandle(String userId) throws Exception {
		return userDao.doGetUserInfo(userId);
	}

	public int doCreateUserHandle(UserVO param) throws Exception {
		return userDao.doCreateUser(param);
	}

	public int doUpdateUserHandle(UserVO param) throws Exception {
		log.debug("############# {}", param);
		return userDao.doUpdateUser(param);
	}

	public int doDeleteUserHandle(String id) throws Exception {
		return userDao.doDeleteUser(id);
	}
}
