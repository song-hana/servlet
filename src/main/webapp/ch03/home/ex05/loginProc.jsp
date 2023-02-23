<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='java.net.URLEncoder' %>
<%
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String val;

	session.setAttribute("user", (userId + userPw));
%>
<%
	
	if (userId.equals("java") && userPw.equals("java")) {
		val = "main.jsp?msg=" + userId + URLEncoder.encode("님, 환영합니다.", "utf-8");
%>
		<c:redirect url='<%= val %>'/>
<% 
	} else if(!userId.equals("java")) {
		val = "login.jsp?msg=" + URLEncoder.encode("아이디를 잘못 입력했습니다.", "utf-8");
%>		
		<c:redirect url='<%= val %>'/>
<%
	} else if(!userPw.equals("java")) {
		val = "login.jsp?msg=" + URLEncoder.encode("비밀번호를 잘못 입력했습니다.", "utf-8");
%>		
		<c:redirect url='<%= val %>'/>
<%
	}
%>
