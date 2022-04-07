
package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller

public class CodeController {
	


	@Autowired
	CodeServiceImpl service;
	
	
//	@RequestMapping(value = "/code/codeGroupList", method = RequestMethod.POST)
	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")CodeVo vo, Model model ) throws Exception {
		
		//Count 가져오는 쿼리
		
		int sum = service.selectOneCount(vo);
		
		vo.setParamsPaging(sum);
		
		//count 가0이아니면 lis 가져오는부분수후 모델에담
		
		
		if(sum != 0) {
		
			List<Code> list = service.selectList(vo);
			
			model.addAttribute("list", list);
		}else {
			System.out.println("값이없습니다");
		
		}

		return "code/codeGroupList";
		
		
	}
	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo")CodeVo vo) throws Exception {
		

		System.out.println(vo.getShOption());
		System.out.println(vo.getShValue());
		
		return "code/codeGroupForm";
	}
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto ,CodeVo vo,RedirectAttributes redirectAttributes) throws Exception {
		

		// 입력을 작동시킨다.
		service.insert(dto);
		
		redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/code/codeGroupView";
	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String CodeGroupView(Model model ,@ModelAttribute("vo") CodeVo vo) throws Exception {
		
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroupView";
		
		
	}
	
	@RequestMapping(value = "/code/codeGroupForm2")
	public String CodeGroupForm2(@ModelAttribute("vo")CodeVo vo , Model model) throws Exception {
	
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroupForm2";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String CodeGroupUptd(Code dto,CodeVo vo) throws Exception{
		
		
		service.update(dto);
		
		return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() + makeQueryString(vo);
	}
	
	@RequestMapping(value = "/code/codeGroupNele")
	public String codeGroupNele(CodeVo vo,RedirectAttributes redirectAttributes) throws Exception{
		
		
		service.updateDelete(vo);
		
		redirectAttributes.addAttribute("shOtion", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/code/codeGroupList";
	}
	
	
	@RequestMapping(value = "/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo,RedirectAttributes redirectAttributes) throws Exception{
		
		service.delete(vo);
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		
		return "redirect:/code/codeGroupList";
	}
	
	
	//----------------------- query String
	
	public String makeQueryString(CodeVo vo) {
		
		String tmp = "&shOption=" + vo.getShOption() +  "&shValue=" + vo.getShValue();
		
		return tmp;
	}
	
	
	
	
	
	
	
// ------------------------------------
// code
	@RequestMapping(value = "/code/codeList")
	public String CodeList(@ModelAttribute("vo")CodeVo vo , Model model) throws Exception {
		
		int rt = service.selectCodeListCount(vo);
		vo.setParamsPaging(rt);
		
		if(rt != 0) {
		
			List<Code> codeList = service.selectCodeList(vo);
			model.addAttribute("codeList", codeList);
			
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
			
		}else {
			System.out.println("값이없습니다");
		
		}
	
		return "code/codeList";
	}
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(CodeVo vo, Model model) throws Exception{
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "/code/codeForm";

	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception{
		
		
		service.codeInsert(dto);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "/code/codeView")
	public String CodeView(Model model ,@ModelAttribute("vo")CodeVo vo) throws Exception {
		
		
		System.out.println("vo.getEndPage()" + vo.getThisPage());
		System.out.println("vo.getIfcdSeq()" + vo.getIfcdSeq());
		System.out.println("vo.getShCdValue()" +vo.getShCdValue());
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeView";
		
		
	}
	@RequestMapping(value = "/code/codeForm2")
	public String CodeForm2(CodeVo vo , Model model) throws Exception {
	
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeForm2";
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String CodeUptd(Code dto) throws Exception{
		
		
		service.updateCode(dto);
		
		return "redirect:/code/codeView?ifcdSeq=" + dto.getIfcdSeq();
	}
	
	
	
	@RequestMapping(value = "/member/memberList")
	public String memberList(Model model) throws Exception {
		
		
		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {
		
		
		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(Model model) throws Exception {
		
		
		return "member/memberView";
	}
	
}