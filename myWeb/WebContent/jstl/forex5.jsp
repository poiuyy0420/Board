<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL core예제 - forTokens</title>
</head>
<body>
	<c:forTokens var="car" items="Sprinter Trueno AE86,RX-7 Savanna FC3S,Lancer Evolution III,RX-7 Efini FD3S" delims=",">
	자동차 이름 : <c:out value="${car }"/><br>
	</c:forTokens>

</body>
</html>