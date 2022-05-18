package com.web.board.mapper;

import com.web.board.vo.MemberVO;

public interface MemberMapper {

	// 회원가입
	public int insert(MemberVO mo) throws Exception;
	
	// 수정
	public int update(MemberVO vo) throws Exception;
	
	// 삭제
	public int delete(MemberVO vo) throws Exception;
}
