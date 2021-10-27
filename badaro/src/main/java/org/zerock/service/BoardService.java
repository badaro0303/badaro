package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardService { // ����Ͻ� ����
	// �Խ��� �۾���
	public void register(BoardVO board);
	
	// �Խ��� ��������
	public BoardVO get(Long p_turn);
	
	// �Խ��� �ۼ���
	public boolean modify(BoardVO board);
	
	// �Խ��� �ۻ���
	public boolean remove(Long p_turn);
	
	// �Խ��� ��ϸ���Ʈ
	public List<BoardVO> getList();
}
