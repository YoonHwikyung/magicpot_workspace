package com.kh.magicpot.guide.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GuideDao {

	/* 다인 추가 - 이용약관 */
	// 이용약관 세부 / 수정용 페이지에 띄울 기본 이용약관
	public String proModifyForm(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("guideMapper.proModifyForm");
	}

	// 이용약관 수정
	public int proModify(SqlSessionTemplate sqlSession, String gu_provision) {
		return sqlSession.update("guideMapper.proModify", gu_provision);
	}
	
	

}
