package com.spring.hemyong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.hemyong.common.CommonSqlSessionTemplate;
import com.spring.hemyong.dao.BoardDAO;
import com.spring.hemyong.vo.BoardVO;

@Repository
public class BoardDAOImpl extends CommonSqlSessionTemplate implements BoardDAO {

	@Override
	public void create(BoardVO vo) throws Exception {
	}

	@Override
	public BoardVO read(Integer u_no) throws Exception {
		return null;
	}

	@Override
	public void delete(Integer u_no) throws Exception {
	}

	@Override
	public void update(BoardVO vo) throws Exception {
	}

	@Override
	public List<BoardVO> getBoardList() throws Exception {
		return getSqlSessionTemplate().selectList("board.selectBoardList");
	}
	
	@Override
	public BoardVO doGetBoardInfo(Integer id) throws Exception {
		return getSqlSessionTemplate().selectOne("board.selectBoardInfo", id);
	}

	@Override
	public int doCreateBoard(BoardVO vo) throws Exception {
		return getSqlSessionTemplate().insert("board.createBoard", vo);
	}

	@Override
	public int doUpdateBoard(BoardVO vo) throws Exception {
		return getSqlSessionTemplate().update("board.updateBoard", vo);
	}

	@Override
	public int doDeleteBoard(String id) throws Exception {
		return getSqlSessionTemplate().delete("board.deleteBoard", id);
	}

}
