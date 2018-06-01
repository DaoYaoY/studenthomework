<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dyy.conser.*" import="com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bg{
				height:100%;
				width:100%;
				text-align:center;
				background-color:#66B3FF;
				position:relative;
			}
.kk{
                width:100px;
                height:50px;
                background-color:#66B3FF;
}
</style>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="bg" style="height:490px;" >
<div style="margin:0px 35%;text-align:center;width:400px;">

<%
HttpSession sessiones =  request.getSession();
Car car = (Car) sessiones.getAttribute("car");
User user = (User) session.getAttribute("user");

%>
<div style="text-align:center;height:100px;font-size:50px;color:red;"><%=user.getName() %>的购物车</b></div>
<table style="border:solid 1px;">
	<tr>
	<td class="kk">图商品片</td>
	<td class="kk">商品名称</td>
	<td class="kk">数量</td>
	<td class="kk">单价</td>
	<td class="kk">总价</td>
	<td class="kk">删除</td>
	</tr>
<%
if(car!=null){
	for(CarItem carItem : car.list()){
	%>	
	<tr>
	<td class="kk"><img src="<%=carItem.getImgpath() %>" style="height:50px;width:50px;"></td>
	<td class="kk"><%=carItem.getProduct() %></td><td class="kk"><%=carItem.getNum() %></td>
	<td class="kk"><%=carItem.getPrice() %></td>
	<td class="kk"><% int add = carItem.getPrice()*carItem.getNum(); %>
	<%=add %></td>
	<td class="kk" style="color:red;"><form action="DelectServlet"><input name="id" type="hidden" value="<%=carItem.getId()%>"><button type="submit">删 除</button></form></td>
	</tr>
	
	
<% 	}
	}
%>

</table>
<div></div>
</div>
</body>
</html>