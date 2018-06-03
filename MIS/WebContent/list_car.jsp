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
				background-color:Azure;
				position:relative;
			}
.kk{
                width:100px;
                height:50px;
                background-color:#66B3FF;
}
.top{
                width:100%;
                height:30px;
                
                
}
.body{
                
}
</style>
</head>
<body class="bg" style="height:100%;">
<jsp:include page="head.jsp"></jsp:include>
<div class="bg" style="height:100%;" >
<div style="margin:0px 35%;text-align:center;width:400px;">

<%
HttpSession sessiones =  request.getSession();
Car car = (Car) sessiones.getAttribute("car");
User user = (User) session.getAttribute("user");

%>
<form action="" method="post">
 <div style="text-align:center;font-size:20px;color:white;font-style:italic;height:10px;"><%=user.getName() %>的购物车</div> 
<!--  <table style="border:solid 1px;">
	<tr>
	<td class="kk">图商品片</td>
	<td class="kk">商品名称</td>
	<td class="kk">数量</td>
	<td class="kk">单价</td>
	<td class="kk">总价</td>
	<td class="kk">删除</td>
	</tr>  -->
	
<%
if(car!=null){
	for(CarItem carItem : car.list()){
	%>
	<div style="margin-top:20px;margin-left:1%;margin-right:35%;width:500px;height:190px;background-color:white;">  <div class="" style="margin:0;width:100%;">
<div  style="float:left;font-size:20px;margin-top:10px;width:20px;"><input type="checkbox" name="check" value="<%=carItem.getPrice()%>*<%=carItem.getNum()%>"></div>
<div  style="float:left;margin-top:10px;text-align:left;font-size:20px;width:200px;"><%=carItem.getProduct() %></div ><div style="float:right;margin-top:10px;text-align:left;font-size:20px;width:50px;"> <a href="DelectServlet?id=<%=carItem.getId() %>"><button type="button" style="border-radius:50%;background-color:Azure;color:black;">移除</button></a></div>

</div><br><br><hr>
<div style="maigin-top:20px;">
<div style="text-align:left;height:150px;display:inline;float:left;">  <img alt="" src="<%=carItem.getImgpath() %>" style="height:130px;width:130px;">     </div>
<div style="float:left;display:inline;"><div style="text-align:left;height:50px;width:250px;">  <%=carItem.getdes()%>  </div>
<div style="margin-top:10px;">  ¥<%=carItem.getPrice() %>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;×<%=carItem.getNum() %></div>

    </div>
		</div>
	
	</div>
	
<% 	}
	}
%>

<div style="position:fixed;bottom:0;margin-left:50%;text-align:center;text-align:center;color:white;width:50px;"><button type="submit" style="background-color:Azure;color:black;border-radius:50%;">结算</button></div></form>

</div>  
</div>




</body>
</html>