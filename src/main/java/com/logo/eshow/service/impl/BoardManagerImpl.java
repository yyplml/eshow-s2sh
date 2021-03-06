package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.BoardQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BoardDao;
import com.logo.eshow.model.Board;
import com.logo.eshow.service.BoardManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "BoardService", endpointInterface = "com.logo.eshow.service.BoardManager")
@Service
public class BoardManagerImpl extends GenericManagerImpl<Board, Integer> implements
		BoardManager {
	@Autowired
	BoardDao boardDao;

	@Autowired
	public BoardManagerImpl(BoardDao boardDao) {
		super(boardDao);
		this.boardDao = boardDao;
	}

	public List<Board> list(BoardQuery query) {
		return boardDao.list(query);
	}

	public Page<Board> search(BoardQuery query) {
		return boardDao.search(query);
	}
}