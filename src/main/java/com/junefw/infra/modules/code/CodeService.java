package com.junefw.infra.modules.code;

import java.util.List;


public interface CodeService {
	
	
// infrCodeGroup	
	public int selectOneCount(CodeVo vo) throws Exception;
	
	public List<Code> selectList(CodeVo vo) throws Exception; 
	
	public int insert(Code dto) throws Exception;
	
	public Code selectOne(CodeVo vo) throws Exception;

	public int update(Code dto) throws Exception;
	
	
//	infrCode
	public int selectCodeListCount(CodeVo vo) throws Exception;
	
	public List<Code> selectCodeList(CodeVo vo) throws Exception;
	
	public int codeInsert(Code dto) throws Exception;
	
	public Code selectOneCode(CodeVo vo) throws Exception;
	
	public int updateCode(Code dto) throws Exception;
}