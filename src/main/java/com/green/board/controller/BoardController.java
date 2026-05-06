package com.green.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.board.dto.BoardDto;
import com.green.board.mapper.BoardMapper;
import com.green.menus.dto.MenuDTO;
import com.green.menus.mapper.MenuMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private MenuMapper  menuMapper;
	
	@Autowired
	private BoardMapper boardMapper;
	
	// /Board/List
	@RequestMapping("/List")
	public ModelAndView list(MenuDTO menuDTO) {
		
		// menus.jsp
		List<MenuDTO> menuList = menuMapper.getMenuList();
		log.info("menuList:"+ menuList);
		
		// list.jsp
		List<BoardDto> boardList = boardMapper.getBoardList(menuDTO);
		log.info("boardList:"+ boardList);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/list");
		mv.addObject("boardList", boardList);
		mv.addObject("menuList", menuList);
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
