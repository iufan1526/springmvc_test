package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
//	infrCodeGroup
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}
	
	
//	infrCode

	@Override
	public List<Code> selectCodeList() throws Exception {
		return dao.selectCodeList();
	}

	@Override
	public int codeInsert(Code dto) throws Exception {
		return dao.codeInsert(dto);
	}

	@Override
	public Code selectOneCode(CodeVo vo) throws Exception {
		return dao.selectOneCode(vo);
	}

	@Override
	public int updateCode(Code dto) throws Exception {
		return dao.updateCode(dto);
	}
	
	
	
}