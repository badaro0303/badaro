package org.zerock.domain;

import java.util.Date; // date ������ �������� ���� ���

import lombok.Data;

@Data
public class BoardVO {

	private Long p_turn;
	private String p_beach;
	private String p_title;
	private int p_rating;
	private String p_content;
	private String p_user;
	private Date p_date;
	private int p_count;
	
}
