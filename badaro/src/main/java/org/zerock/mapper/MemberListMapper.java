package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.MemberListVO;

public interface MemberListMapper {

	public List<MemberListVO> getList();
}
