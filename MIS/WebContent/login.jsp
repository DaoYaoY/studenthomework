<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="javax.servlet.http.Cookie" %>    
    <% 
String path=request.getContextPath();
String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
     function check(form){
    	 if(form.id.value==""){
    		 alert("账户不能为空");
    		 return false;
    	 }
    	 if(form.password.value==""){
    		 alert("密码不能为空");
    		 return false;
    	 }return true;
     }
     
</script>
</head>
<style type="text/css">

*{
				margin: 0;
				padding: 0;
			}
html,body{
				height: 100%;
				width: 100%;
			}
.bg{
				height: 100%;
				width: 100%;
				text-align:center;
				background:url(D:\洒墨.jpg);
				position:relative;
			}
.login{
                position:absolute;
                width:300px;
                height:300px;
                margin:150px 520px;
                background-color:red;
                background:url(D:\洒墨.jpg);
}
</style>
<%
	Cookie [] cookies = request.getCookies();
    String name = "";
    String  pass = "";
    if(cookies!=null)
    {
    	for(int i=0;i<cookies.length;i++)
    	{
    		if(cookies[i].getName().equals("cookie"))
    			response.sendRedirect("login_success.jsp");
    	}
    }
%>
<body><form action="Login" method="post">
   <div class="bg">
   <div class="login">
<input type="hidden" name="methodNaem"value="1"/>
<p>账号：<input type="text" name="name" id="name" style="margin-top:120px;"/></p>
<p>密码：<input type="password" name="password" id="password"/></p><br>
<p><button type="submit" style="margin-right:20px;">登录</button><button type="reset" style="margin-right:20px;">重置</button>
<a href="register.jsp" target="_blank">注册</a></p>
   </div>
</div></form>
</body>
</html>