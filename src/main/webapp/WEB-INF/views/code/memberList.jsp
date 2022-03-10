<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>

	<link
		href="../../../_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
		rel="stylesheet">
	<link href="../../../css/memberListStyle.css" rel="stylesheet">
	
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>
	<nav class="navbar">
		<div class="navbar_main">
			<i class="far fa-address-card"></i>
			<a href="">Home</a>
		</div>
		<div class="navbar_menu">
			<ul>
				<li><a href="">회원관리</a></li>
				<li><a href="">게시판관리</a></li>
				<li><a href="">제품관리</a></li>
				<li><a href="">이벤트관리</a></li>
				<li><a href="">팝업관리</a></li>
				<li><a href="">설문관리</a></li>
				<li><a href="">배너관리</a></li>
			</ul>		
		</div>
		<div class="navbar_logout">
		  님 반갑습니다.
			<button type="button" class="btn btn-secondary">로그아웃</button>
		</div>
	</nav>
	<main>
		<section class="section_search">
			<div class="section_search_menu">
				<ul>
					<li>회원등급 :
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">전체</label>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">탈퇴대기자</label>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">가입신청자</label>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">일반회원</label>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">VIP회원</label>
					</li>
					<li>수신동의
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">SMS</label>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">이메일</label>
					</li>
					<li>검색어
						<select >
							<option selected>이름</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						<input type="text" style="height:23px"maxlength="20">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
						<label class="form-check-label" for="flexCheckDefault">현재 접속중인 회원만 검색</label>
					</li>
					<li><button type="button" class="btn btn-primary btn-lg">검색</button>
					</li>
				</ul>
			</div>
		</section>
		<section class="section_table">
			<div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<th scope="col">번호</th>
							<th scope="col">아이디</th>
							<th scope="col">등급</th>
							<th scope="col">상태</th>
							<th scope="col">접속수</th>
							<th scope="col">가입일</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row"><input type="checkbox"></th>
							<td scope="col">1</td>
							<td scope="col"><a href="/infra/code/memberView">iufan1526</a></td>
							<td scope="col">일반등급</td>
							<td scope="col">정상</td>
							<td scope="col">3</td>
							<td scope="col">2022.01.01</td>
							<td scope="col">비번변경 1:1문의 관리</td>
						</tr>
						<tr>
							<th scope="row"><input type="checkbox"></th>
							<td scope="col">2</td>
							<td scope="col">아이디</td>
							<td scope="col">등급</td>
							<td scope="col">정상</td>
							<td scope="col">4</td>
							<td scope="col">2022.01.01</td>
							<td scope="col">비번변경 1:1문의 관리</td>
						</tr>
						<tr>
							<th scope="row"><input type="checkbox"></th>
							<td scope="col">3</td>
							<td scope="col">아이디</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">5</td>
							<td scope="col">2022.01.01</td>
							<td scope="col">비번변경 1:1문의 관리</td>
						</tr>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<td scope="col">4</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">6</td>
							<td scope="col">1</td>
							<td scope="col"> 2022.01.01</td>
							<td scope="col"> 2022.01.01</td>
						</tr>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<td scope="col">5</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">1</td>
							<td scope="col">1</td>
							<td scope="col">2022.01.01</td>
						</tr>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<td scope="col">6</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">접속수</td>
							<td scope="col">1</td>
							<td scope="col">2022.01.01</td>
						</tr>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<td scope="col">7</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">접속수</td>
							<td scope="col">1</td>
							<td scope="col">2022.01.01</td>
						</tr>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<td scope="col">8</td>
							<td scope="col">등급</td>
							<td scope="col">상태</td>
							<td scope="col">접속수</td>
							<td scope="col">1</td>
							<td scope="col">2022.01.01</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="section_botton">
					<div class="del_botton">
						<button type="button" class="btn btn-danger"><img src="../../../images/pngwing.com.png" width="20px"height="20px"></button>
					</div>
					<div class="numberBar">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
					<div class="d-grid gap-2 d-md-block">
						<button class="btn btn-primary" type="button"><a href="/infra/code/memberForm">등록</a></button>
						<button class="btn btn-primary" type="button">abs</button>
					</div>
				</div>
		</section>
	</main>
	<footer>
	</footer>


</body>
</html>