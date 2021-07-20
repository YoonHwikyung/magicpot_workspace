package com.kh.magicpot.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.magicpot.common.model.vo.PageInfo;
import com.kh.magicpot.community.model.vo.Community;
import com.kh.magicpot.community.model.vo.CommunityNotice;
import com.kh.magicpot.member.model.vo.Address;

import com.kh.magicpot.member.model.vo.Member;
import com.kh.magicpot.project.model.vo.Creator;
import com.kh.magicpot.project.model.vo.Project;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int idCheck(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.idCheck", userId);
	}
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public ArrayList<Address> selectMember(SqlSessionTemplate sqlSession, int memNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectMember", memNo);
	}
	
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}
	

	// 배송지 추가
	public int insertAddress(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.insert("memberMapper.insertAddress", map);
	}
	

	public Address selectAddress(SqlSessionTemplate sqlSession, int adNo) {
		return sqlSession.selectOne("memberMapper.selectAddress", adNo);
	}
	
	public int fixAddress(SqlSessionTemplate sqlSession, Address a) {
		return sqlSession.update("memberMapper.fixAddress", a);
	}
	
	public int deleteAddress(SqlSessionTemplate sqlSession, int adNo) {
		return sqlSession.update("memberMapper.deleteAddress", adNo);
	}
	
	public int fixAddress2(SqlSessionTemplate sqlSession, Address a) {
		return sqlSession.update("memberMapper.fixAddress2", a);
	}
	
	public int fixAddress3(SqlSessionTemplate sqlSession, Address a) {
		return sqlSession.update("memberMapper.fixAddress3", a);
	}
	
	public Address selectDefault(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("memberMapper.selectDefault", memNo);
	}
	
	/*관리자 일반회원관리*/
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.selectListCount");

	}
	
	public ArrayList<Member> selectList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectList", null, rowBounds);
		
	}
	
	/*일반회원 상세 조회*/
	public Member selectAdminMember(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("memberMapper.selectAdminMember", memNo);
	}
	
	// 크리에이터 조회
	public Creator creatSearch(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.selectOne("memberMapper.creatSearch", memNo);
	}
	
	// 내가만든 프로젝트조회
	public ArrayList<Project> madeProject(SqlSessionTemplate sqlSession, int creNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.madeProject", creNo);
	}
	
	// 내가 만든 프로젝트 삭제
	public int deleteMyProject(SqlSessionTemplate sqlSession, int proNo) {
		return sqlSession.update("memberMapper.deleteMyProject", proNo);
	}
	
	// 회원탈퇴
	public int deleteMember(SqlSessionTemplate sqlSession, String memId) {
		return sqlSession.update("memberMapper.deleteMember", memId);
	}
	
	// 일반회원관리 상세 회원 탈퇴
	public int deleteAdminMember(SqlSessionTemplate sqlSession, int memNo) {
		return sqlSession.update("memberMapper.deleteAdminMember", memNo);
	}
	
	// 일반회원관리 다중 선택 회원 탈퇴
	public int multiDeleteAdopt(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.update("memberMapper.multiDeleteAdopt", m);
	}
	
	// 1일반회원관리 검색
	public ArrayList<Member> searchAdminList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("memberMapper.searchAdminList");
	}

	public int selectSearchListCount(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.selectOne("memberMapper.selectSearchListCount", map);
	}

	public ArrayList<Member> selectSearchList(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, Object> map){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectSearchList", map, rowBounds);
	}
	
}
