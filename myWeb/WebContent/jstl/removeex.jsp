<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL core 예제 - set, out, remove</title>
</head>
<body>
browser변수값 설정
	<c:set var="browser" value="${header['User-Agent'] }"/><br>
	<c:out value="${browser }"/><p>
browser변수값 제거 후
	<c:remove var="brower"/>
	<c:out value="${brwoser }"/>
	
	<br><br>
	변수설정
	<c:set var="age" value="20"/>
	<c:out value="${age}"/>
</body>
</html>