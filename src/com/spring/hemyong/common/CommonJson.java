package com.spring.hemyong.common;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

public final class CommonJson {
	/**
	 * <pre>
	 * ======================================================================
	 * 성공 결과에 대한 json 객체 만들기
	 * ======================================================================
	 * </pre>
	 * @param data
	 * @return
	 */
	public static ModelAndView getSuccessJsonModel(Object data) {
		Map<String, Object> success = new HashMap<String, Object>();
		success.put(CommonConst.JsonName.RESULT, CommonConst.SuccessCode.COMMON);
		if (data != null) {
			success.put(CommonConst.JsonName.DATA, data);
		}
		
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject(CommonConst.JsonName.ROOT, success);
		return mav;
	}
	
	/**
	 * <pre>
	 * ======================================================================
	 * 오류 발생에 대한 json 객체 만들기
	 * ======================================================================
	 * </pre>
	 * @param errorCode
	 * @return
	 */
	public static ModelAndView getFailJsonModel(String errorCode) {
		Map<String, String> failure = new HashMap<String, String>();
		failure.put(CommonConst.JsonName.RESULT, errorCode);
		
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject(CommonConst.JsonName.ROOT, failure);
		return mav;
	}
}
