
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="javax.servlet.http.Cookie" 
    import = "com.dyy.bean.*"
%>    
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
    	 if(form.name.value==""){
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
				margin:0;
				padding:0;
			}
html,body{
				height:100%;
				width:100%;
			}
.bg{
				height:100%;
				width:100%;
				text-align:center;
				background-color:#FFE4B5;
				position:relative;
			}
.login{
                position:absolute;
                width:300px;
                height:300px;
                border-radius:10px;
                border:solid rgb(100,100,100) 1px;
                margin:150px 520px;
                filter:alpha(opacity:30);
                opacity:0.7;
                position:absolute;
                
}
</style>
<%
    User user = new User(); 
    user =(User) session.getAttribute("user");
	Cookie [] cookies = request.getCookies();
    if(cookies!=null&&cookies.length>0&&user!=null)
    {
    	for(Cookie cookie : cookies)
    	{
    		if("session".equals(cookie.getName())){
    			session = (HttpSession) application.getAttribute(cookie.getValue());
    		    //user =(User) session.getAttribute("user");
    		    System.out.println(user);
    			//session.setAttribute("user", user);
    			
    			response.sendRedirect("header.jsp");
    			}
    	}
    }
%>
<body style="height:100%;width:100%;text-align:center;position:relative;background-image:url(images/背景5.jpg);

background-size:100% 1000px;">
<div class="bg" style="height:100%;width:100%;text-align:center;position:relative;background-image:url(images/背景5.jpg);

background-size:100% 1000px;">
 <div class="login">
<form action="Login" method="post" onsubmit="return check(this);">   
<input type="hidden" name="methodNaem"value="1"/>
<p>账号：<input type="text" name="name" id="name" style="margin-top:120px;"/></p><br>
<p>密码：<input type="password" name="password" id="password"/></p><br>
<p><button type="submit" style="margin-right:20px;">登录</button><button type="reset" style="margin-right:20px;">重置</button>
<a href="register.jsp" target="_blank">注册</a></p>
   </form>
   </div></div>
</body>
</html>