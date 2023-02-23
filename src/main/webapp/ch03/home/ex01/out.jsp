<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<!-- <p>0 1 2 3 4 5 6 7 8 9<p> -->
<% 
	String plus = "";
	for(int i = 0; i < 10; i++)
		plus += i + "&nbsp;";
%>

<%= plus %> 

<%
	for(int i = 0; i < 10; i++) {
%>
	<%= i %> &nbsp;
<%
	}
%>

<!-- 과제: /ch03/ex01/out.jsp를 refactoring 하라. 
out 객체를 쓰지 마라. -->