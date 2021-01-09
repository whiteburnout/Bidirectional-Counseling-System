<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" import="spms.vo.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<title>Insert title here</title>

<%--디자인 입히고 기능 구현이 일반적 --%>
	<%
		User userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (User) session.getAttribute("userID");
		}
	%>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-eample-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="main" class="navbar-brand">E&G</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-eample-navbar-collapse-1" style="font-size: 17px;">
			<ul class="nav nav-pills navbar-right">

				<li><a href="SNS.jsp">SNS</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">고객센터</a>
					<ul class="dropdown-menu">
						<li class="active"><a href="FAQ.jsp">FAQ</a></li>
						<li><a href="Contact.jsp">CONTACT</a></li>
					</ul></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav nav-pills navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기</a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login">로그인</a></li>
						<li><a href="join">회원가입</a></li>
					</ul></li>
			</ul>

			<%
				} else {
			%>
			<ul class="nav nav-pills navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="logout">로그아웃</a></li>
						<li><a href='mypage?user_id=${userID.user_id}'>마이페이지</a></li>
						<li><a href='mygoal?user_id=${userID.user_id}'>나의목표</a></li>
						<li><a href='Schedule.jsp'>일정</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>


		</div>
	</nav>
