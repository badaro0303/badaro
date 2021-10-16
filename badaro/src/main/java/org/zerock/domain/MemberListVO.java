package org.zerock.domain;

import lombok.Data;

@Data
public class MemberListVO {
		
	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_birth;
	private int user_phone;

}
