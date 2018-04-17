<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%request.setCharacterEncoding("UTF-8");%>
    <%@  page import="com.dyy.bean.User" %>
    <%@ page import="java.sql.*" %><%@page import="java.util.*" %>
<jsp:useBean id="use" class="com.dyy.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="use"/>
<% 
String path=request.getContextPath();
String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerName()+":"+request.getServerPort()+path+"/";%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

<%
  request.setCharacterEncoding("utf-8");
  String name=request.getParameter("id");
  String pass=request.getParameter("password");
  boolean flag=false;

  
%>
   <%try {
		// 加载数据库驱动，注册到驱动管理器
		Class.forName("com.mysql.jdbc.Driver");
		// 数据库连接字符串
		String url = "jdbc:mysql://localhost:3306/web";
		// 数据库用户名
		String username = "root";
		// 数据库密码
		String password = "111";
		// 创建Connection连接
		Connection conn = DriverManager.getConnection(url,username,password);
		// 判断 数据库连接是否为空
		if(conn != null){
			// 输出连接信息
			out.println("数据库连接成功！");
			// 关闭数据库连接
			//conn.close();
		}else{
			// 输出连接信息
			out.println("数据库连接失败！");
		}   
   PreparedStatement ps= conn.prepareStatement("select * from user where name=? and password=?");
   ps.setString(1, name);
   ps.setString(2, pass);
   ResultSet row=ps.executeQuery();
   if(row.next()){
	   flag=true;}
   if(flag==true){
	   out.println("成功");}else{
		   out.println("shibai");
	   }row.close();
	   ps.close();
	   conn.close();
   }catch(Exception e){
	   e.printStackTrace();
   } %>
</body>
</html>