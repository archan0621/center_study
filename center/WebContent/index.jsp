<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String section = request.getParameter("section") != null ? request.getParameter("section") : "";
%>
</head>
<body>
<a href="?section=a">a</a>
<a href="?section=b">b</a>
<a href="?section=c">c</a>
		<%
		switch(section){
		case "a":
			%> <%@include file="pages/a.jsp" %><%
			break;
		case "b":
			%><%@include file="pages/b.jsp" %><%
			break;
		case "c":
			%><%@include file="pages/c.jsp" %><% 
		}
		%>
</body>
</html>