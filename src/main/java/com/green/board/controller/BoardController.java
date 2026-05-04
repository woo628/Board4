package com.green.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.board.dto.BoardDto;
import com.green.board.mapper.BoardMapper;
import com.green.menus.dto.MenuDTO;
import com.green.user.dto.UserDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	
	// /Board/List
	@RequestMapping("/List")
	public ModelAndView list(BoardDto boardDto) {
		ModelAndView mv = new ModelAndView();
		List<BoardDto> boardList = boardMapper.getBoardList(boardDto);
		log.info("boardList:"+ boardList);
		
		mv.setViewName("board/list");
		mv.addObject("boardList", boardList);
		return mv;
	}
	
	// /Board/WriteFrom
	@RequestMapping("/WriteForm")
	public String writeform() {
		return "board/write";
	}
	
	@RequestMapping("/Write")
	public String write(BoardDto boardDto) {
		boardMapper.insertboard(boardDto);
		return "redirect:/Board/List";
	}
}
