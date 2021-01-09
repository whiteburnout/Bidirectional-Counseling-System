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
<h3>추천목록</h3>
<h1>토익<h1>
<c:forEach var="user" items="${users1}"> 
${user.name},
${user.toeic}
<br>
</c:forEach>
<br>
<h1>토플<h1>
<c:forEach var="user" items="${users2}"> 
${user.name},
${user.toefl}
<br>
</c:forEach>
<h1>hsk<h1>
<c:forEach var="user" items="${users3}"> 
${user.name},
${user.hsk}
<br>
</c:forEach>
<h1>jlpt<h1>
<c:forEach var="user" items="${users4}"> 
${user.name},
${user.jlpt}
<br>
</c:forEach>
<h1>자격증<h1>
<c:forEach var="user" items="${users5}"> 
${user.name},
${user.certification1},
${user.certification2},
${user.certification3},
${user.certification4}
<br>
</c:forEach>
<h1>직무<h1>
<c:forEach var="user" items="${users6}"> 
${user.name},
${user.field}
<br>
</c:forEach>
</body>
</html>