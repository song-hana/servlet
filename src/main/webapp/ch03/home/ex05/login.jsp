<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp'>
	<input type='text' name='userId' placeholder='아이디'/>
	<input type='password' name='userPw' placeholder='비밀번호'/>
	<input type='submit'>
</form> <br>

<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>