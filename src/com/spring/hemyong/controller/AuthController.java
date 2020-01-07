package com.spring.hemyong.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hemyong.common.CommonJson;
import com.spring.hemyong.service.UserService;
import com.spring.hemyong.vo.UserVO;

@Controller
@RequestMapping("/auth")
public class AuthController {
	static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public ModelAndView onGetLoginPage(HttpServletRequest request) {
		return new ModelAndView("/auth/login");
	}
	
	@RequestMapping("/signup")
	public ModelAndView onGetSignupPage(HttpServletRequest request) {
		return new ModelAndView("/auth/signup");
	}
	
	@RequestMapping(value = "/getUserList", method = RequestMethod.GET)
	public ModelAndView onGetUserList(HttpServletRequest request) throws Exception {
		logger.debug("###################### {}", "onGetUserList");
		return CommonJson.getSuccessJsonModel(userService.doGetUserListHandle());
	}
	
	@RequestMapping(value = "/getUserInfo/{userId}", method = RequestMethod.GET)
	public ModelAndView onGetUserInfo(@PathVariable("userId") String userId, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(userService.doGetUserInfoHandle(userId));
	}
	
	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public ModelAndView onCreateUser(@RequestBody UserVO param, HttpServletRequest request) throws Exception {
		int result = userService.doCreateUserHandle(param);
		return CommonJson.getSuccessJsonModel(result);
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.PUT)
	public ModelAndView onUpdateUser(@RequestBody UserVO param, HttpServletRequest request) throws Exception {
		logger.debug("###################### {}", param);
		return CommonJson.getSuccessJsonModel(userService.doUpdateUserHandle(param));
	}
	
	@RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.DELETE)
	public ModelAndView onDeleteUser(@PathVariable("userId") String userId, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(userService.doDeleteUserHandle(userId));
	}
}
