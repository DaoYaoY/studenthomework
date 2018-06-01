<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dyy.conser.*" import="com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%><%HttpSession sessiones = request.getSession();
User user = (User)sessiones.getAttribute("user");
%>
 

<html> 
 <head>
   <base href="<%=basePath%>"> 
 
 <title>登录成功</title>

 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0"> 
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
 <meta http-equiv="description" content="This is my page"> 

 </head>
 
 <body> 

  欢迎您  ${user.getName() }     <a href="Outlogin">退出登录 </a>   
  <% out.println("登录成功");%>   
  
  </body> 
</html> 