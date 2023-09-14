package com.jsp.board.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.board.model.BoardRepository;
import com.jsp.board.model.BoardVO;

public class SearchService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String key = request.getParameter("keyword");
		List<BoardVO> list = new ArrayList<>();
		
		for(BoardVO vo : BoardRepository.getInstance().getList() ) {
			if(vo.getWriter().contains(key)) {
				list.add(vo);
			}
		}
		
		request.setAttribute("boardList", list);
	}

}
