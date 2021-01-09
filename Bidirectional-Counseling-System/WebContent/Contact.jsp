<%@page import="spms.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="text/html; charset=UTF-8">
<%--반응형 메타 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<link rel="stylesheet" href="css/Contact.css">



<title>Contact</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="center-container">
		<div class="cont">
			<h1 class="title">CONTACT</h1>
			<h2 class="title">HOW CAN I HELP YOU?</h2>
			<div class="info_three">
				<article>
					<h1 id="section1">1. Information</h1>
					<div class="info">
						<h3>고객 센터 운영시간</h3>
						<span> 평일 오전 : 9시 ~ 오후 6시 </br> 점심 시간 : 오후 1시 ~ 2시 </br> 공휴일 휴무
						</span>
					</div>

					<div class="info">
						<h3>전화 문의</h3>
						<span>이앤지센터 033-252-8787</span>
					</div>

					<div class="info">
						<h3>이메일 문의</h3>
						<span>Help@ENG.ME</span>
					</div>

				</article>
			</div>
			<div class="map">
				<article class="title">
					<h1 id="section2">2. LOCATION</h1>

				</article>
				<div style="overflow: hidden">
					<div class="mapouter">
						<div class="gmap_canvas">
							<iframe width="600" height="500" id="gmap_canvas"
								src="https://maps.google.com/maps?q=%EC%9D%B4%EC%95%A4%EC%A7%80%ED%85%8C%ED%81%AC&t=&z=13&ie=UTF8&iwloc=&output=embed"
								frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
							<a href="https://www.utilitysavingexpert.com">https://www.utilitysavingexpert.com</a>
						</div>
						<style>
.mapouter {
	position: relative;
	text-align: right;
	height: 500px;
	width: 600px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	height: 500px;
	width: 600px;
}
</style>
					</div>
				</div>
				<div class="location">

					강원도 춘천시 한림대학길 1 한림대학교 창업보육센터 12201호(기업부설연구소 12213호) <br> 1,
					Hallymdaehak-gil, Chuncheon-si, Gangwon-do, Republic of Korea
				</div>
			</div>



		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/navigationBar.js"></script>

</body>
</html>