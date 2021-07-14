package com.kh.magicpot.pay.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.magicpot.common.model.vo.PageInfo;
import com.kh.magicpot.pay.model.dao.PayDao;
import com.kh.magicpot.pay.model.vo.Pay;

@Service
public class PayServiceImpl implements PayService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private PayDao aDao;
	
	
	@Override
	public int selectListCount() {

		return aDao.selectListCount(sqlSession);
	}


	@Override
	public ArrayList<Pay> selectList(PageInfo pi) {
		return aDao.selectList(sqlSession, pi);
	}


	@Override
	public ArrayList<Pay> paySelect(int memNo) {
		// TODO Auto-generated method stub
		return null;
	}

/*
	@Override
	public AdminPay paySelect(int memNo) {
		return aDao.paySelect(sqlSession, memNo);
	}

*/




	







}
