package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.modules.member.Member;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;

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

	@Override
	public List<Code> selectCodeList() throws Exception {
		return dao.selectCodeList();
	}

	@Override
	public int codeInsert(Code dto) throws Exception {
		return dao.codeInsert(dto);
	}
	
	
	
}