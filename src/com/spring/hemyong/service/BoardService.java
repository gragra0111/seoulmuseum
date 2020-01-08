package com.spring.hemyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hemyong.dao.BoardDAO;
import com.spring.hemyong.vo.BoardVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardService {
	@Autowired
	private BoardDAO boardDao;

	public List<BoardVO> doGetBoardListHandle() throws Exception {
		log.debug("############# {}", "------------------------------");
		List<BoardVO> list = boardDao.getBoardList();
		return list;
	}

	public BoardVO doGetBoardInfoHandle(Integer BoardId) throws Exception {
		return boardDao.doGetBoardInfo(BoardId);
	}

	public int doCreateBoardHandle(BoardVO param) throws Exception {
		return boardDao.doCreateBoard(param);
	}

	public int doUpdateBoardHandle(BoardVO param) throws Exception {
		return boardDao.doUpdateBoard(param);
	}

	public int doDeleteBoardHandle(String id) throws Exception {
		return boardDao.doDeleteBoard(id);
	}
}
