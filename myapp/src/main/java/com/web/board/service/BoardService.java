package com.web.board.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.web.board.controller.BoardController;
import com.web.board.mapper.BoardMapper;
import com.web.board.vo.BoardVO;
import com.webjjang.util.PageObject;

@Service
public class BoardService {

	private static final Logger logger = LoggerFactory.getLogger(BoardService.class);
	
	@Inject
	private BoardMapper mapper;

	// 1. list
	public List<BoardVO> list (PageObject pageObject) throws Exception {
		return mapper.list(pageObject);
	}

	// 2. view
	public BoardVO view (long no, int inc) throws Exception {
		System.out.println("BoardService.view().no, inc -" + no + inc);
		if(inc == 1) mapper.icrease(no);
		return mapper.view(no);
	}
}
