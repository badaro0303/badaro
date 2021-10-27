package org.zerock.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service // 占쏙옙占쏙옙絿占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占�
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{ // 鍮꾩쫰�땲�뒪�쁺�뿭
	
	private BoardMapper mapper;

@Override
public void register(BoardVO board) {
	log.info("register......" + board);
	
	mapper.insertSelectKey(board);	
	
}

@Override
public BoardVO get(Long p_turn) {
	log.info("get....." + p_turn);
	
	return mapper.read(p_turn);
}

@Override
public boolean modify(BoardVO board) {
	
	log.info("modify....." + board);
	
	return mapper.update(board)==1;
}

@Override
public boolean remove(Long p_turn) {
	log.info("remove....." + p_turn);
	
	return mapper.delete(p_turn)==1;
}

@Override
public List<BoardVO> getList() {
	log.info("getList.....");
	
	return mapper.getList();
}


	
}
