<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link
		href="../../../_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
		rel="stylesheet" type="text/css">
	<link href="../../../css/memberListStyle.css" rel="stylesheet">
	
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
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
    <div class="main_from container">
      <div class="row">
        <h5>아이디</h5>
        <div class="col-sm-12">
          <input type="text" class="form-control" placeholder="영문(대소문자)숫자4~20자리 조합" aria-label="First name">
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h5>비밀번호</h5>
          <input type="password" class="form-control" placeholder="영문(대소문자)특수문자,숫자4~20자리 조합" aria-label="First name">
        </div>
        <div class="col col-md-6">
          <h5>비밀번호 확인</h5>
          <input type="password" class="form-control" placeholder="영문(대소문자)특수문자,숫자4~20자리 조합" aria-label="Last name">
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h5>이름</h5>
          <input type="text" class="form-control" placeholder="" aria-label="First name">
        </div>
        <div class="col-sm-12 col-md-6">
          <h5>이름(영문)</h5>
          <input type="text" class="form-control" placeholder="" aria-label="Last name">
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <h5>성별</h5>
          <select class="form-select" aria-label="Default select example">
            <option selected>성별</option>
            <option value="1">남자</option>
            <option value="2">여자</option>
            <option value="3">기타</option>
          </select>
        </div>
        <div class="col-sm-12 col-md-4">
          <h5>국적</h5>
          <select class="form-select" aria-label="Default select example">
            <option selected>대한민국</option>
            <option value="1">미국</option>
            <option value="2">일본</option>
            <option value="3">중국</option>
          </select>
        </div>
        <div class="col-sm-12 col-md-4">
          <h5>생일</h5>
          <input type="date" width="100px">
        </div>
      </div>
      <div class="row">
        <div class="col">
          <h5>Email</h5>
          <input type="text" class="form-control" placeholder="" aria-label="First name">
        </div>
        <div class="col">
          <h5>이메일 정보 마케팅 사용동의</h5>
          <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">동의합니다
        </div>
      </div>
      <div class="row">
        <div class="col">
          <h5>핸드폰
          </h5>
          <input type="text" class="form-control" placeholder="" aria-label="First name">
        </div>
        <div class="col">
          <h5>핸드폰 정보 마케팅 사용동의</h5>
          <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">동의합니다
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h5>주소</h5>
          <input type="password" class="form-control" placeholder="" aria-label="First name">
        </div>
        <div class="col-sm-12 col-md-6">
          <h5>상세주소</h5>
          <input type="password" class="form-control" placeholder="" aria-label="Last name">
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h5>자기소개</h5>
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <div class="col">
          <h5>정보보관기간</h5>
          <select class="form-select" aria-label="Default select example">
            <option selected>1년</option>
            <option value="1">5년</option>
            <option value="2">10년</option>
            <option value="3">탈퇴시</option>
          </select>
        </div>
        <div class="main_botton">
          <button type="button" class="btn btn-success">등록</button>
          <button type="button" class="btn btn-danger">취소</button>
        </div>
      </div>
    </div>
  </main>
</body>
</html>