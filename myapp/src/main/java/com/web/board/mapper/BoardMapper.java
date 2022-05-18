package com.web.board.mapper;

import java.util.List;

import com.web.board.vo.BoardVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {

	// 1-1 List
	public List<BoardVO> list (BoardVO vo) throws Exception;
		
}
