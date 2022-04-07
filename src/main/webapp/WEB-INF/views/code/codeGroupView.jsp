<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${rt.ifcgSeq}"/> | <c:out value="${rt.ifcgName}"/> | <c:out value="${rt.ifcgDelNy}"/> <br>
<%-- 파일이름:<img src="${pageContext.request.contextPath}/resources/<c:out value="${rt.uuidFileName }"/>"><br> --%>
<a href="<c:out value="${rt.uuidFileName}"/>"><img src="${pageContext.request.contextPath}/resources/<c:out value="${rt.uuidFileName}"/>"/></a><br>
<a href="/infra/code/codeGroupForm2?ifcgSeq=${rt.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">수정</a>
<a href="/infra/code/codeGroupList?shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">목록</a>
<a href="/infra/code/codeGroupDele?ifcgSeq=<c:out value="${rt.ifcgSeq}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"id="btnSubmit">삭제</a>
<a href="/infra/code/codeGroupNele?ifcgSeq=<c:out value="${rt.ifcgSeq}"/>">(가)삭제</a>










<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

	$("#btnSubmit").on("click",function(){
		
		var rt = confirm("삭제하시겠습니까?");
		
		if(rt){
			
		}else{
			
			return false;
		}
	
	});
	

</script>