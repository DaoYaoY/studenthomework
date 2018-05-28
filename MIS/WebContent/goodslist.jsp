<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.List" import = "com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(form){
HttpSession session = request.getSession();

User user = (User) session.getAttribute("user");

if(user==null){
	alert("您还没有登录！");
	return false;
}return true;
}
</script>
<link rel="stylesheet" href="Css.css" type="text/css" />
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
<jsp:include page="head.jsp"></jsp:include>

<%
List<Goods> list = (List<Goods>)request.getAttribute("list");
for(Goods good:list){

%>
<div class="rightbody"><div class="zhanshi"><hr><img src="<%=good.getimgpath() %>"/>
<div>
<%=good.getname() %><p><div><%=good.getdescribe() %></div><p><p><div style="font-seze:10px;color:red;text-align:center;">¥<%=good.getprice() %></div>
<p></p>
<form action="BuyServlet" method="post" onsubmit="return check(this);">
<input name="num" type="text">台
<input name="name" type="hidden" value="<%=good.getname()%>">
<button type="submit">购买</button>
</form>
</div>
</div>
</div>

<%} %>

<div style="position:fixed;bottom:0;margin-left:50%;text-align:center;"><%=request.getAttribute("bar") %></div>



</body>
</html>