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
// --------------------------------------------------------------
	@RequestMapping("/Delete")
	public  ModelAndView  delete(BoardDto boardDto) {
		
		// db 의 자료를 삭제
		boardMapper.deleteBoard(boardDto );
		
		// 목록으로 이동
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("home");
		return        mv;
	}
// --------------------------------------------------------------	
	@RequestMapping("/View")
	public ModelAndView view (BoardDto boardDto) {
		// 조회수증가
		boardMapper.incHit(boardDto);
		// 메뉴 목록
		List<MenuDTO> menuList = menuMapper.getMenuList();
		// idx로 조회한 글
		BoardDto board = boardMapper.getBoard(boardDto);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/view");
		mv.addObject("board",board);
		mv.addObject("menuList", menuList);
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
