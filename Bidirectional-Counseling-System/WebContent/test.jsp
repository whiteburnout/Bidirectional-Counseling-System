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
      <li><a href="board.jsp">게시판</a></li>
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
		<div class = "jumbotron">
			<div class = "container">
				<h1>웹 사이트</h1>
				<p>담길 내용</p> 
				<p><a class ="btn btn-primary btn-pull" href="#"<%--링크--%> role="button">버튼 내용</a></p>
			</div>
		</div>
	</div>
	<div class = "container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class = "carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class ="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg">
				</div>
				<div class="item">
					<img src="images/2.jpg">
				</div>
				<div class="item">
					<img src="images/3.jpg">
				</div>
			</div>
			<a class = "left carousel-control" href="#myCarousel" data-slide="prev">
				<span class ="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class = "right carousel-control" href="#myCarousel" data-slide="next">
				<span class ="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	<script src = "js/navigationBar.js"></script>
</body>
</html>