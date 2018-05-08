<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cath 태그</title>
</head>
<body>
<c:catch var="ex">
name 파라미터 값 = <%=request.getParameter("name") %><br></br>
<% if(request.getParameter("name").equals("test")){ %>
${param.name }은 test입니다.
<% } %>
</c:catch>
<br></br>
<c:if test="${ex!=null }">
예외가 발생하였습니다:<br></br>
</c:if>q

</body>
</html>