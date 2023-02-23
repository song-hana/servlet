<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String delObj = request.getParameter("delProduct");
	
	if(delObj == null) {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='삭제할 상품을 선택하세요.'/>
		</c:redirect>	
<%
	} else {
		List<String> cart = (List<String>)session.getAttribute("cart");
		
		cart.remove(delObj);
		
		session.setAttribute("cart", cart);
%>
		<c:redirect url='cartOut.jsp'/>
<%
	} 
%>