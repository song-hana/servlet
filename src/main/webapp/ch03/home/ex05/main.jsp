<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='login.jsp'>Login</a> <br>

<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>

<%
	if(session.getAttribute("user") != null) {
%>
		<a href='logout.jsp'>로그아웃</a>
<%
	}
%>