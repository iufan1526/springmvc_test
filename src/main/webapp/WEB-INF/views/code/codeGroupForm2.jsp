<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form id="form" method="post" action="/infra/code/codeGroupUpdt">
	<input type="hidden" name="ifcgSeq" value="<c:out value="${rt.ifcgSeq}"/>">
	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="text" name="ifcgName" placeholder="아이디" value="<c:out value="${rt.ifcgName}"/>">
	<input type="submit" value="수정">
</form>