<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jsp" %>
<%
	try{
		if(session.getAttribute("memId")==null){
			response.sendRedirect("sessionMemberLogIn.jsp");}
		}catch(Exception e){}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션을 사용한 간단한 회원인증</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
	<form method="post" action="sessionLogOut.jsp">
		<table width="300" border="1" align="center">
			<tr>
				<td align="center" bgcolor="<%=value_c %>">
				<b><%=session.getAttribute("memId") %></b>
				님이 로그인 하였습니다</td>
			</tr>
			<tr>
				<td align="center" bgcolor="<%=value_c %>">
				<input type="submit" value="로그아웃">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>