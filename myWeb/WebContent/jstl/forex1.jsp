<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] movieList = {"프리즌브레이크", "스파르타쿠스", "히어로즈"};
	request.setAttribute("movieList", movieList);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Example</title>
</head>
<body>
인기 미국 드라마 : 
<ul>
	<c:forEach var="movie" items="${movieList }">
		<li>${movie }</li>
	</c:forEach>
</ul>

</body>
</html>