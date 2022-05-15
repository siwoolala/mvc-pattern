package com.web.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.board.vo.MemberVO;


@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	
	@RequestMapping(value = "/join")
	public String join( ) {
		return "member/join";
	}
	
	@RequestMapping(value = "/login")
	public String login( ) {
		return "member/login";
	}
	
	@PostMapping(value = "/joinForm")
	public String joinForm(MemberVO vo) throws Exception {
		
		
		
		return "index";
	}
}
