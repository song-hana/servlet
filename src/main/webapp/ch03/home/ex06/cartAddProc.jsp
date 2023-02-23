<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	List<String> cart;

	if(products == null) {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 추가할 상품을 선택하세요.'/>
		</c:redirect>	
<%
	} else if(products.length == 0) {
		cart = new ArrayList<>();
			
		for(String product: products)
			cart.add(product);
		
		session.setAttribute("cart", cart);
	} else if(products.length > 0) {
		cart = (List<String>)session.getAttribute("cart");
		
		for(String product: products)
			cart.add(product);
		
		session.setAttribute("cart", cart);
	}
%>

<c:redirect url='cartOut.jsp'/>