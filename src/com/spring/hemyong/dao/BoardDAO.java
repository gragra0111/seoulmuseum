package com.spring.hemyong.dao;

import java.util.List;

import com.spring.hemyong.vo.BoardVO;

public interface BoardDAO {
	public void create(BoardVO vo) throws Exception;
    
	public BoardVO read(Integer b_no) throws Exception;
    
	public void delete(Integer b_no) throws Exception;
    
	public void update(BoardVO vo) throws Exception;
	
	public List<BoardVO> getBoardList() throws Exception;
	
	public BoardVO doGetBoardInfo(Integer id) throws Exception;
	
	public int doCreateBoard(BoardVO vo) throws Exception;
	
	public int doUpdateBoard(BoardVO vo) throws Exception;
	
	public int doDeleteBoard(String id) throws Exception;
}
