<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>이엔지테크</title>

<style>
#intro {
position: absolute;
z-index: -1;
width:100%;
height:100%;
}

#login {
position: absolute;
z-index:100;
top:80%;
left:50%;
width:200px;
height:100px;
font-size: 10;
}

</style>

</head>

<body>
<div id="intro">
	<img id="intro" src="images/miracles-logo.jpg">
</div>
<div id ="login">
    <input type="button" value="로그인" onClick="location.href='login.jsp'">

</div>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
</body>
</html>
