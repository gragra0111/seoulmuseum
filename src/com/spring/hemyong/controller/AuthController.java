package com.spring.hemyong.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hemyong.common.CommonConst;
import com.spring.hemyong.common.CommonJson;
import com.spring.hemyong.dto.AuthInfoDTO;
import com.spring.hemyong.param.UserLoginParam;
import com.spring.hemyong.service.UserService;
import com.spring.hemyong.vo.UserVO;

@Controller
@RequestMapping("/auth")
public class AuthController {
	static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public ModelAndView onGetLoginPage(@CookieValue(value="sm_user_login_info", required=false) Cookie cookie) {
		UserLoginParam param = new UserLoginParam();
		if(cookie != null) {
			param.setId(cookie.getValue());
			param.setRememberId(true);
        }
		return new ModelAndView("/auth/login");
	}
	
	@RequestMapping(value = "/login/process", method = RequestMethod.POST)
	public ModelAndView onProcessLogin(@RequestBody UserLoginParam param, HttpSession session, HttpServletResponse response) {
		UserVO vo = userService.doProcessLoginHandle(param);
		if(vo == null) {
			return CommonJson.getFailJsonModel(CommonConst.ErrorCode.UNAVAILABLE_USER);
        }
		
		AuthInfoDTO dto = new AuthInfoDTO(vo.getId(), vo.getName());
        session.setAttribute("authInfo", dto);
        
        Cookie rememberCookie = new Cookie("sm_user_login_info", vo.getId());
        rememberCookie.setPath("/");
        if(param.isRememberId()) {
            rememberCookie.setMaxAge(60*60*24*7);
        } else {
            rememberCookie.setMaxAge(0);
        }
        response.addCookie(rememberCookie);

		return CommonJson.getSuccessJsonModel(dto);
	}
	
	@RequestMapping("/logout")
	public ModelAndView onGetLogoutPage(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:/");
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
		return CommonJson.getSuccessJsonModel(userService.doUpdateUserHandle(param));
	}
	
	@RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.DELETE)
	public ModelAndView onDeleteUser(@PathVariable("userId") String userId, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(userService.doDeleteUserHandle(userId));
	}
}
