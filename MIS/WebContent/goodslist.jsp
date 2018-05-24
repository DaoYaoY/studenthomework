<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.List" import = "com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.rightbody{
      background-color:Azure;
      text-align:center;
      text-size:5;
      width:400px;
      height:400px;
      float:right;
      margin-right:30px;
      margin-top:20px;
      position:relative;
}
.zhanshi{
     background-color:;
     width:300px;
     height:300px;
     maigin-top:40px;
     margin-left:50px;
     position:absolute;
}
</style>
</head>

<body>


<%
List<Goods> list = (List<Goods>)request.getAttribute("list");
for(Goods good:list){

%>
<div class="rightbody"><div class="zhanshi"><hr><img src="<%=good.getimgpath() %>"/>
<div>
<%=good.getname() %><div><%=good.getprice() %></div>
</div>
</div>
</div>

<%} %>

<div style="position:fixed;bottom:0;margin-left:50%;text-align:center;"><%=request.getAttribute("bar") %></div>



</body>
</html>