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
import com.spring.hemyong.service.BoardService;
import com.spring.hemyong.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/list")
	public ModelAndView onGetSignupPage(HttpServletRequest request) {
		return new ModelAndView("/board/list");
	}
	
	@RequestMapping(value = "/getBoardList", method = RequestMethod.GET)
	public ModelAndView onGetBoardList(HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(boardService.doGetBoardListHandle());
	}
	
	@RequestMapping(value = "/getBoardInfo/{boardId}", method = RequestMethod.GET)
	public ModelAndView onGetBoardInfo(@PathVariable("boardId") String boardId, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(boardService.doGetBoardInfoHandle(Integer.parseInt(boardId)));
	}
	
	@RequestMapping(value = "/createBoard", method = RequestMethod.POST)
	public ModelAndView onCreateBoard(@RequestBody BoardVO param, HttpServletRequest request) throws Exception {
		int result = boardService.doCreateBoardHandle(param);
		return CommonJson.getSuccessJsonModel(result);
	}
	
	@RequestMapping(value = "/updateBoard", method = RequestMethod.PUT)
	public ModelAndView onUpdateBoard(@RequestBody BoardVO param, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(boardService.doUpdateBoardHandle(param));
	}
	
	@RequestMapping(value = "/deleteBoard/{boardId}", method = RequestMethod.DELETE)
	public ModelAndView onDeleteUser(@PathVariable("boardId") String boardId, HttpServletRequest request) throws Exception {
		return CommonJson.getSuccessJsonModel(boardService.doDeleteBoardHandle(boardId));
	}
}
