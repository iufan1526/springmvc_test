package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
//	infrCodeGroup
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
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
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
	}
	@Override
	public int updateDelete(CodeVo vo) throws Exception {
		return dao.updateDelete(vo);
	}
	
	
//	infrCode

	@Override
	public List<Code> selectCodeList(CodeVo vo) throws Exception {
		return dao.selectCodeList(vo);
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
	@Override
	public int selectCodeListCount(CodeVo vo) throws Exception {
		return dao.selectCodeListCount(vo);
	}
	
//	@PostConstruct
//	public void selectCache() {
//		 List<Code> codeListFromDb = dao.selectCache();
//		 
//		 Code.cachedCodeArrayList.clear();
//		 Code.cachedCodeArrayList.addAll(codeListFromDb);
//		 System.out.println("총갯수: " + Code.cachedCodeArrayList.size() + "개 정상적으로 메모리에 저장되었습니다");
//	}
//	

	
	
	
}