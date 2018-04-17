<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <jsp:useBean id="use" class="com.dyy.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="use"/>

<% try {
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
	String sql= "insert into user(name,password,email,phone)values(?,?,?,?)";
	PreparedStatement ps= conn.prepareStatement(sql);
	ps.setString(1, use.getName());
	
	ps.setString(2, use.getPassword());
	
	ps.setString(3, use.getEmail());
	
	ps.setString(4, use.getPhone());
	
	int row=ps.executeUpdate();
	if(row>0){
		out.println("注册成功！");
	}
	ps.close();
	conn.close();
}  catch(Exception e){
	out.println("注册失败！");
	e.printStackTrace();
} %>
</head>
<body>
<br>
<a href="login.jsp">返回</a>
</body>
</html>