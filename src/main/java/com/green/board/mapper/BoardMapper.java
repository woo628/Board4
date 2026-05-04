package com.green.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.green.board.dto.BoardDto;

@Mapper
public interface BoardMapper {

	List<BoardDto> getBoardList(BoardDto boardDto);

	void insertboard(BoardDto boardDto);

}
