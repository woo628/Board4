package com.green.board.dto;

import lombok.Data;

@Data // Getter,Setter,toString,HashCode,equals,construct
public class BoardDto2 {
	 private int idx;
	 private String menu_id;
	 private String title;
	 private String content;
	 private String writer;
	 private String regdate;
	 private int hit;
}
