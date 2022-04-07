<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeInst">
	<select name="infrCodeGroup_ifcgSeq">
		<c:forEach items="${list}" var="item" varStatus="status">	
		<option value="<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></option>
		</c:forEach>
	</select>
	<input tpye="hidden" name="ckNy" id="ckNy" value="0">
	동의합니다<input type="checkbox" name="ck" id="ck" value="">
	
	<input type="text" name="ifcdName" placeholder="이름" value="">
	<input type="submit" name="btn" id="btn" value="입력">
</form>









<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>



<script type="text/javascript">
	$("#btn").on("click" function(){
		if(seq.val() == 0""){
			
			if(validationInst() == false) return false;
			setCheckboxValue($("#ck"),$("#ckNy"));
			form.attr("action", "goUrlInst").submit();
			
		}else {
			
			if(validationUpdt() == false) return false;
			form.attr("action", "goUrlInst").submit();
		}	
	});
	
	setCheckboxValue = function(obj,targetObj){
		if(obj.is("chackd")){
			targetObj.val("1");
		}
		}else {
			targetObj.val("0");
		}
		
	}
</script>