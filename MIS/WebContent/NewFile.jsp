<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dyy.bean.*" import = "java.util.List" import = "java.sql.*"%>
    <%@ page language="java" import="java.sql.*,java.io.*,java.util.*,java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//把经常需要修改的数据放在最上面，以方便修改
String username="root";//数据库用户名
String password="111";//数据库密码

//jsp程序中半数以上的Exception是NonePointerException,在声明变量时赋予一个初始值，能缩短调试时间
ResultSet baicheng=null;//数据库查询结果集
ResultSet totle=null;
ResultSet newreplace=null;//数据库查询结果集
ResultSet newdirect=null;//数据库查询结果集
ResultSet online=null;//数据库查询结果集
ResultSet notice=null;//数据库查询结果集
Connection conn=null;
Statement stmt=null;
//注册驱动程序
try
{
  Class.forName("com.mysql.jdbc.Driver");
}catch(java.lang.ClassNotFoundException e)
{
  System.err.println("Driver Error"+e.getMessage());
}
//连接数据库并创建Statement对象

String url="jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=utf-8";
try
{
conn=DriverManager.getConnection(url,username,password);
stmt=(Statement)conn.createStatement();
}catch(Exception e)
{
  System.err.println("数据库连接错误:"+e.getMessage());
}
//通过Statement执行SQL语句来获取查询结果
try
{
totle=(ResultSet)stmt.executeQuery("select * from goods order by id desc limit 0,10");
}catch(SQLException ex)
{
   System.err.println("数据库查错误:"+ex);
}
%>
<%
int i=0;
  //利用while循环输出各条记录
  while(totle.next())
  {i=i+1;
%>
<%=totle.getString("name") %>
<%
Goods good = new Goods();
good.setname(totle.getString("name"));
%>
<%=good.getname() %>
<%
}
%>