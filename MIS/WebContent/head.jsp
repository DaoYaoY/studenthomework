<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.dyy.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Css.css" type="text/css"/>
</head>
<body>
 <%User user = new User();user = (User)session.getAttribute("user");if(user==null){%>
	 
  <p class="view"><font size="2"><a href="login.jsp"style="text-decoration:none;">登录</a>   <a href="register.jsp"style="text-decoration:none;"> 注册</a></font> </p><hr/><%} %><%else{ %>
  <p class="view"><font size="2"><%=user.getName() %><a href="Outlogin"style="text-decoration:none;">退出登录</a>  <a href="register.jsp"style="text-decoration:none;"> 注册</a></font> </p><hr/>
  <%} %>
<div class="top2">
            <img src="images/淘宝.gif" width=80px height=50px style="vertical-align:bottom;" />
            <input style="vertical-align:right;border:1px solid ";"type="search"  value=""/><input type="button" value="搜索"/>
</div>

<div class="top" style="word-spacing=30px;" >
<div class="daohang"> 
           <div class="daohang" >      <a href="header.jsp">    首页   </a> </div>  
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"><a href="">化妆品</a>     </div>    
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a>女装</a>   </div>    
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a> 家居 </a> </div>      

            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a> 美食</a>     </div>   
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a href="FindPage">手机</a>      </div>                                      

            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a>美妆</a>     </div>   
            <div class="daohang" style="float:right;">   <a href="user.jsp">个人中心</a></div> <div class="daohang" style="float:right;">   <a href="ListServlet">我的购物车</a></div>  

</div></div>


</div>
</body>
</html>