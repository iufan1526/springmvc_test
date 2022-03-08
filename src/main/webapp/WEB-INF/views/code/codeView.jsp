<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${rt.ifcdSeq}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>| <c:out value="${rt.infrCodeGroup_ifcgSeq}"/> <br>
<a href="/infra/code/codeForm2?ifcdSeq=${rt.ifcdSeq}">수정</a>
<a href="/infra/code/codeForm">등록</a>