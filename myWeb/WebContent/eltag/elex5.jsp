<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>표현언어의 사용예제</title>
</head>
<body>
	<h3>파라미터값 처리</h3>
	<br></br>
	<form action="elex5.jsp" method="post">
	이름 : <input type="text" name="name" value="${param['name'] }">
		<input type="submit" value="확인">
	</form>
	<p>
	이름은 ${param.name }입니다.
	</p>
</body>
</html>