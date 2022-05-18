package com.web.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.board.service.BoardService;
import com.webjjang.util.PageObject;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;

	
	
	/*
	 * // 1. List
	 * 
	 * @GetMapping("/list.do") public String list(PageObject pageObject, Model
	 * model) throws Exception { // 페이지가 1보다 작으면 1페이지로 세팅해 준다.
	 * if(pageObject.getPage() < 1) { pageObject.setPage(1); }
	 * 
	 * return "board/list"; }
	 */
	
}
