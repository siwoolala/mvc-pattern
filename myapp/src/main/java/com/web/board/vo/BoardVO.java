package com.web.board.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int bnumber;
	private int bwriter;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private Date bfilename;
	private int bhit;
}
