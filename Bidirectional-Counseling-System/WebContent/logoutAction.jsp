<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html;" charset="UTF-8">

<title>이엔지테크</title>
</head>
<body>
	<% 
		session.invalidate();
	%>
	<script>
	location.href = 'intro.jsp;'
	</script>
</body>
</html>