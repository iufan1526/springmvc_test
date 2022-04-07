<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




<form id="form" name="form" method="post" action="">
	<input type="hidden">
</form>

<c:out value="${rt.ifcdSeq}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>| <c:out value="${rt.infrCodeGroup_ifcgSeq}"/> <br>
<a href="/infra/code/codeForm2?ifcdSeq=${rt.ifcdSeq}">수정</a>
<a href="/infra/code/codeForm">등록</a>
<a href="javascript:goList()">목록</a>



























<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validtion.js"></script>

<script type="text/javascript">


	goList = function(seq){
		alert(seq);
		$("#form").attr("action","/infra/code/codeList");
		$("#thisPage").val(seq);
		$("#form").submit();
		
	}
	
	goForm = function(seq){
		alert(seq);
		$("#ifcdSeq").val(seq);
		$("#form").attr("action","/infra/code/codeView");
		$("#form").submit();
		
	}
	
</script>