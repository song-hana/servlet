<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12));
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %>
<%= user %>
<%-- 현재 페이지를 넘어가면 데이터가 사라진다. --%>