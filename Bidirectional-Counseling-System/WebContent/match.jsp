<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="spms.vo.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/product_css2.css?after"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<link rel="stylesheet" href="css/FAQ.css">
<link rel="stylesheet" href="css/Select.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>

<title>매칭페이지</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<ul class="cards">
		<li class="cards__item">
			<!-- 1 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">토익 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users1}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>토익점수:${user.toeic}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 2 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users1}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>토익점수:${user.toeic}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 3 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users1}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>토익점수:${user.toeic}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 4 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users1}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>토익점수:${user.toeic}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 5 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">토플 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users2}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>토플점수:${user.toefl}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 6 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users2}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>토플점수:${user.toefl}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 7 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users2}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>토플점수:${user.toefl}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 8 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users2}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>토플점수:${user.toefl}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 9 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">HSK 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users3}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>HSK점수:${user.hsk}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 10 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users3}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>HSK점수:${user.hsk}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 11 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users3}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>HSK점수:${user.hsk}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 12 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users3}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>HSK점수:${user.hsk}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 13 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">jlpt 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users4}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>jlpt점수:${user.jlpt}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 14 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users4}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>jlpt점수:${user.jlpt}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 15 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users4}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>jlpt점수:${user.jlpt}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 16 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users4}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>jlpt점수:${user.jlpt}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 17 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">자격증 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users5}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>자격증:${user.certification1}</p>
							<p>자격증:${user.certification2}</p>
							<p>자격증:${user.certification3}</p>
							<p>자격증:${user.certification4}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 18 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users5}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>자격증:${user.certification1}</p>
							<p>자격증:${user.certification2}</p>
							<p>자격증:${user.certification3}</p>
							<p>자격증:${user.certification4}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 19 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users5}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>자격증:${user.certification1}</p>
							<p>자격증:${user.certification2}</p>
							<p>자격증:${user.certification3}</p>
							<p>자격증:${user.certification4}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 20 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users5}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>자격증:${user.certification1}</p>
							<p>자격증:${user.certification2}</p>
							<p>자격증:${user.certification3}</p>
							<p>자격증:${user.certification4}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 21 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title">직무 멘토 추천</div>
					<div class="card__text">
						<c:forEach var="user" items="${users6}" begin="0" end="0" step="1">
							<p>이름:${user.name}</p>
							<p>직무:${user.field}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 22 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users6}" begin="1" end="1" step="1">
							<p>이름:${user.name}</p>
							<p>직무:${user.field}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 23 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users6}" begin="2" end="2" step="1">
							<p>이름:${user.name}</p>
							<p>직무:${user.field}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
		<li class="cards__item">
			<!-- 24 -->
			<div class="card">
				<div class="card__image card__image--example"></div>
				<div class="card__content">
					<div class="card__title"></div>
					<div class="card__text">
						<c:forEach var="user" items="${users6}" begin="3" end="3" step="1">
							<p>이름:${user.name}</p>
							<p>직무:${user.field}</p>
					</div>
					<button class="btn btn--block card__btn"
						onclick="location.href='match_detail?user_id=${user.user_id}'">연락하기</button>
					</c:forEach>
				</div>
			</div>
		</li>
	</ul>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/navigationBar.js"></script>
	<script src="js/navigationBar.js"></script>
	<script src="js/textcount.js"></script>
</body>
</html>