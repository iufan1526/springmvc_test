<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<form name="" id="" method="get" action="/infra/code/codeGroupList">
	<select name="shIfcgDelNy" id="shIfcgDelNy">
		<option value="">삭제여부
		<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>>Y
		
		<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>>N
		
	</select> 
	이름:<input type="text" name="shIfcgName" id="shIfcgName"
		value="<c:out value="${vo.shIfcgName}"/>"> <input
		type="submit" name="search" id="btnSubmit"> || <select
		name="shOption" id="shOption">
		<option value="">검색어
		<option value="1">한글
		<option value="2">영어
	</select> <input type="text" name="shValue" id="shValue"><br>

	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">

				<c:out value="${item.ifcgSeq}" /> |<a
					href="/infra/code/codeGroupView?ifcgSeq=${item.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>" />|<c:out
					value="${item.ifcgName}" />
				<c:out value="${item.ifcgNameEng}" />
				</a> | <c:out value="${item.ifcgDelNy}" />
				<br>

			</c:forEach>
		</c:otherwise>
	</c:choose>
	
	<nav aria-label="...">
		<ul class="pagination">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
				<li class="page-item"><a class="page-link"
					href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shOption=<c:out value="${vo.shValue}"/>">Previous</a></li>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
						<li class="page-item active"><a class="page-link"
							href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${vo.endPage ne vo.totalPages}">
				<li class="page-item"><a class="page-link"
					href="/infra/code/codeGroupList?thisPage=${vo.endPage + 1}">Next</a></li>
			</c:if>
		</ul>
	</nav>
</form>
<a href="/infra/code/codeGroupForm?&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"><input type="button" value="등록"></a>















<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validtion.js"></script>

<script type="text/javascript">

	 $("#btnSubmit").on("click",function(){
		alert("알람");

	
	}); 
</script>