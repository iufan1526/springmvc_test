package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

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
	private MultipartFile file;
	private MultipartFile file2;
	private String originalFileName;
	private String uuidFileName;
	
	
	
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
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getUuidFileName() {
		return uuidFileName;
	}
	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}
	
	
	
	
	
	
	
	
	
}
