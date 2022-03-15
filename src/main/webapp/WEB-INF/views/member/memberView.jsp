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
    <table class="table view_table">
      <thead>
        <tr>
          <th scope="col">회원 기본정보</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="">프로필사진</th>
          <td><img src="../../../images/icon_kakao.svg" width="100px" height="100px"></td>
        </tr>
        <tr>
          <th scope="row">이름</th>
          <td>김승태</td>
        </tr>
        <tr>
          <th scope="row">(영문)이름</th>
          <td>KIM SEUNG TEA</td>
        </tr>
        <tr>
          <th scope="row">생일</th>
          <td colspan="2"><input type="date" value="1997-11-19" readonly></td>
        </tr>
        <tr>
          <th scope="row">아이디</th>
          <td colspan="2">iufan1526</td>
        </tr>
        <tr>
          <th scope="row">비밀번호</th>
          <td colspan="2"> <input type="password" class="form-control" placeholder="" aria-label="First name"></td>
        </tr>
        <tr>
          <th scope="row">기존 이메일주소</th>
          <td colspan="2"> <input type="text" class="form-control" placeholder="" aria-label="First name" value="iufan1526@naver.com"></td>
        </tr>
        <tr>
          <th scope="row">국적</th>
          <td colspan="2"><input type="text" class="form-control" placeholder="" aria-label="First name" value="대한민국" readonly></td>
        </tr>
        <tr>
          <th scope="row">휴대전화번호</th>
          <td colspan="2">
            <select>
              <option>SKT</option>
              <option>KT</option>
              <option>LGU+</option>
              <option>자급제</option>
            </select>
            <input type="text" class="form-control" placeholder="" aria-label="First name" value="01080071526">
          </td>
        </tr>
        <tr>
          <th scope="row">주소</th>
          <td colspan="2"><input type="text" class="form-control" placeholder="" aria-label="First name" value="경기도 화성시 향남읍 한절이1길"></td>
        </tr>
        <tr>
          <th scope="row">상세주소</th>
          <td colspan="2"><input type="text" class="form-control" placeholder="" aria-label="First name" value="6-11 202호"></td>
        </tr>
        <tr>
          <th scope="row">자기소개</th>
          <td colspan="2"><textarea class="form-control" id="exampleFormControlTextarea1" rows="3">안녕하세요. 김승태입니다.</textarea></td>
        </tr>
      </tbody>
    </table>
    <div class="main_botton">
      <button type="button" class="btn btn-success"><a href="/infra/member/memberList">수정</a></button>
      <button type="button" class="btn btn-danger"><a href="/infra/member/memberList">취소</a></button>
    </div>
  </main>
</body>
</html>