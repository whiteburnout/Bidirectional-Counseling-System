<%@page import="spms.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<meta name="viewport" content="text/html; charset=UTF-8">
<%--반응형 메타 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<link rel="stylesheet" href="css/FAQ.css">
<title>FAQ</title>



</head>

<body>
	<jsp:include page="header.jsp" />

	<div class="faq-header">Frequently Asked Questions</div>

	<div class="faq-content">
		<div class="faq-question">
			<input id="q1" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q1" class="panel-title">첫번째 질문</label>
			<div class="panel-content">답은 1</div>
		</div>

		<div class="faq-question">
			<input id="q2" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q2" class="panel-title">두번째 질문</label>
			<div class="panel-content">답은 2</div>
		</div>

		<div class="faq-question">
			<input id="q3" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q3" class="panel-title">세번째 질문</label>
			<div class="panel-content">답은 3</div>
		</div>

		<div class="faq-question">
			<input id="q4" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q4" class="panel-title">네번째 질문</label>
			<div class="panel-content">답은 4</div>
		</div>

		<div class="faq-question">
			<input id="q5" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q5" class="panel-title">다섯번째 질문</label>
			<div class="panel-content">답은 5</div>
		</div>

		<div class="faq-question">
			<input id="q6" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q6" class="panel-title">여섯번째 질문</label>
			<div class="panel-content">답은 6</div>
		</div>

		<div class="faq-question">
			<input id="q7" type="checkbox" class="panel">
			<div class="plus">+</div>
			<label for="q7" class="panel-title">일곱번째 질문</label>
			<div class="panel-content">답은 7</div>
		</div>
	</div>





	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/navigationBar.js"></script>
</body>
</html>
