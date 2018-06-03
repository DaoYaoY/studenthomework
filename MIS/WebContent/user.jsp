<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dyy.bean.*"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="height:100%;width:100%;text-align:center;position:relative;background-image:url(images/背景5.jpg);

background-size:100% 1000px;">
<% request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
HttpSession sessions = request.getSession();  
sessions.getAttribute("user");
User user =(User) sessions.getAttribute("user");

%>
<sql:setDataSource var="mytestdb"
                   driver="com.mysql.jdbc.Driver" 
                   url="jdbc:mysql://localhost/web?useSSL=false&characterEncoding=utf8"
                   user="root" password="111" />
<sql:query dataSource="${mytestdb}" sql="SELECT * FROM user where id='${user.getId()}'"
        var="result" />
       <div  style="position:absolute;
                width:300px;
                height:250px;
                border-radius:10px;
                border:solid rgb(100,100,100) 1px;
                margin:150px 520px;
                filter:alpha(opacity:30);
                opacity:0.7;
                position:absolute;">
        <table style="align:center;text-align:center;margin-left:50px;">
        
        <c:forEach var="row" items="${result.rows}">
                                 <h2 style="">个人信息</h2>
                             
        <tr>    <td style="text-align:center;">&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td><td><c:out value="${row.name}" ></c:out></td></tr>
        
        <tr>    <td>电子邮箱：</td><td><c:out value="${row.email}"></c:out></td></tr>
        <tr>    <td>电话号码：</td><td><c:out value="${row.phone}"></c:out></td></tr>
        
        </c:forEach>
        </table>
        <a href="update.jsp">修改资料</a>
     </div>
          
</body>
</html>