package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.infra.modules.member.Member;

@Controller

public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
	public String CodeGroupList(Model model) throws Exception {
		
		List<Code> list = service.selectList();
		
		
		model.addAttribute("list", list);
		
		return "code/codeGroupList";
		
		
	}
//	@RequestMapping(value = "/code/codeGroupList")
//	public String memberForm(Model model) throws Exception {
//
//		return "code/codeGroupList";
//	}
//	
//	@RequestMapping(value = "/code/codeGroupList")
//	public String codeInst(Model model, Code dto) throws Exception {
//		
//
//		// 입력을 작동시킨다.
//		int result = service.insert(dto);
//		
//
//		return "member/memberForm";
//	
//	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String CodeGroupView(Model model , CodeVo vo) throws Exception {
		
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroupView";
		
		
	}
	
	@RequestMapping(value = "/code/codeGroupForm2")
	public String CodeGroupForm2(CodeVo vo , Model model) throws Exception {
	
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroupForm2";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String CodeGroupUptd(Code dto) throws Exception{
		
		
		service.update(dto);
		
		return "";
	}
	
// ------------------------------------
// code
	@RequestMapping(value = "/code/codeList")
	public String CodeList(Model model) throws Exception {
		
		List<Code> codeList = service.selectCodeList();
		
		model.addAttribute("codeList", codeList);
		
		return "code/codeList";
		
		
	}
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm() throws Exception{
		
		return "/code/codeForm";

	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception{
	
		service.codeInsert(dto);
		System.out.println(dto.getIfcdName());
		return "";
	}
}