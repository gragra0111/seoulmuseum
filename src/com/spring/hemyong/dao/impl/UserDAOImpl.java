package com.spring.hemyong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.hemyong.common.CommonSqlSessionTemplate;
import com.spring.hemyong.dao.UserDAO;
import com.spring.hemyong.vo.UserVO;

@Repository
public class UserDAOImpl extends CommonSqlSessionTemplate implements UserDAO {

	@Override
	public void create(UserVO vo) throws Exception {
	}

	@Override
	public UserVO read(Integer u_no) throws Exception {
		return null;
	}

	@Override
	public void delete(UserVO u_no) throws Exception {
	}

	@Override
	public void update(UserVO vo) throws Exception {
	}

	@Override
	public List<UserVO> getUserList() throws Exception {
		return getSqlSessionTemplate().selectList("user.selectUserList");
	}
	
	@Override
	public UserVO doGetUserInfo(String id) throws Exception {
		return getSqlSessionTemplate().selectOne("user.selectUserInfo", id);
	}

	@Override
	public int doCreateUser(UserVO vo) throws Exception {
		return getSqlSessionTemplate().insert("user.createUser", vo);
	}

	@Override
	public int doUpdateUser(UserVO vo) throws Exception {
		return getSqlSessionTemplate().update("user.updateUser", vo);
	}

	@Override
	public int doDeleteUser(String id) throws Exception {
		return getSqlSessionTemplate().delete("user.deleteUser", id);
	}

}
