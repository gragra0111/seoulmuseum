package com.spring.hemyong.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@RequestMapping("/main")
	public ModelAndView onGetPage(HttpServletRequest request) {
		log.debug("MainController : {}", "main page");
		return new ModelAndView("main");
	}
}
