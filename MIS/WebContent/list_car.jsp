<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dyy.conser.*" import="com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div style="margin:30% 50%;text-align:center;width:200px;">

<%
HttpSession sessiones =  request.getSession();
Car car = (Car) sessiones.getAttribute("car");
User user = (User) session.getAttribute("user");

%>
<b><%=user.getName() %>的购物车</b>
<table >
	<tr>
	<td>商品名称</td>
	<td>数量</td></tr>
<%
if(car!=null){
	for(CarItem carItem : car.list()){
	%>	
	<tr>
	<td><%=carItem.getProduct() %></td><td><%=carItem.getNum() %></td>
	</tr>
	
	
<% 	}
	}
%></table></div>
</body>
</html>