<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="text/html; charset=UTF-8"> <%--반응형 메타 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navigationBar.css">
<title>이엔지테크</title>
</head>
<body>
<%--디자인 입히고 기능 구현이 일반적 --%>
	<%
		String userID = null;
		if(session.getAttribute("userID")!=null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<!-- Navigation Bar -->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
    data-target="#bs-eample-navbar-collapse-1" aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a href="main.jsp" class="navbar-brand">이엔지테크</a>
  </div>
  <div class="collapse navbar-collapse" id="bs-eample-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="main.jsp">메인</a></li>
      <li class="active"><a href="board.jsp">게시판</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Team</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    	<%
				if(userID ==null){
			 %>
			<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role = "button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
				<ul class = "dropdown-menu">
					<li class ="active"><a href = "login.jsp">로그인</a></li>
					<li><a href = "join.jsp">회원가입</a></li>
				</ul>
				
				</li>
			</ul>
				 
			<%
				}else{
					%>
					<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role = "button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
				<ul class = "dropdown-menu">
					<li class ="active"><a href = "logoutAction.jsp">로그아웃</a></li>
					
				</ul>
				
				</li>
			</ul>
			<%
				}
			%>
			
		
  </div>
</nav>
	
	<div class = "container">
		<div class="row">
			<table class = "table table-striped" style="text-align: center; border:1px solid #dddddd">
				<thead>
					<tr>
						<th style = "background-color: #eeeeee; text-align: center;">번호</th>
						<th style = "background-color: #eeeeee; text-align: center;">제목</th>
						<th style = "background-color: #eeeeee; text-align: center;">작성자</th>
						<th style = "background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td>1</td>
					<td>안녕하세요</td>
					<td>홍길동</td>
					<td>2019-08-29</td>
				</tr>
				</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	<script src = "js/navigationBar.js"></script>
</body>
</html>