package com.junefw.infra.modules.code;

import java.util.List;

public class Code {
	
// DTO	
	private Integer ifcgSeq;
	private String ifcgName;
	private String ifcgNameEng;
	private Integer ifcgDelNy;
	
	private String ifcdSeq;
	private String ifcdName;
	private String ifcdDelNy;
	private String infrCodeGroup_ifcgSeq;
	
	
	public static List<Code> cachedCodeArrayList;
	
	
	
	public Integer getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(Integer ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public String getIfcgNameEng() {
		return ifcgNameEng;
	}
	public void setIfcgNameEng(String ifcgNameEng) {
		this.ifcgNameEng = ifcgNameEng;
	}
	public Integer getIfcgDelNy() {
		return ifcgDelNy;
	}
	public void setIfcgDelNy(Integer ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(String ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public String getInfrCodeGroup_ifcgSeq() {
		return infrCodeGroup_ifcgSeq;
	}
	public void setInfrCodeGroup_ifcgSeq(String infrCodeGroup_ifcgSeq) {
		this.infrCodeGroup_ifcgSeq = infrCodeGroup_ifcgSeq;
	}
	
	
	
	
	
	
}
