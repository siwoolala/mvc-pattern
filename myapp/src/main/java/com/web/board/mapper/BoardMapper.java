package com.web.board.mapper;

import java.util.List;

import com.web.board.vo.BoardVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {

	// 1-1 List
	public List<BoardVO> list (PageObject pageObject) throws Exception;
		
	// 1-2 ListAll
	public long getTotalRow (PageObject pageObject) throws Exception;
	
	// 2-1 View
	public BoardVO view(long no ) throws Exception;
	
	// 2-2 Count
	public int icrease(long no) throws Exception;
	
	// 3. Write
	public int write(BoardVO vo) throws Exception;
	
	// 4. Update
	public int update(BoardVO vo) throws Exception;
	
	// 5. Delete
	public int delete(long no) throws Exception;
}
