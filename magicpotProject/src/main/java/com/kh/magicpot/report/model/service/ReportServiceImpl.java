package com.kh.magicpot.report.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.magicpot.report.model.dao.ReportDao;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ReportDao rDao;
	
}