<%@ page 
  language="java" 
  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<h1>회원목록2</h1>
<p><a href='add'>신규 회원</a></p>
<c:forEach var="user" items="${users}"> 
${user.user_id},
<a href='update?no=${user.user_id}'>${user.name}</a>,
${user.birth}
<a href='delete?no=${user.user_id}'>[삭제]</a><br>
</c:forEach>
<jsp:include page="/Tail.jsp"/>
</body>
</html>