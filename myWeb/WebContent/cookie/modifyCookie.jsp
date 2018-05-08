<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null && cookies.length>0){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				cookies[i].setValue(URLEncoder.encode("자바와 JSP","UTF-8"));
				response.addCookie(cookies[i]);
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>값변경</title>
</head>
<body>
name 쿠키의  값을 변경합니다
</body>
</html>