<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(form){
	with(form){
		if(form.password.value!=form.relpassword.value){
			alert("两次密码不一样");
			return false;
		}return true;
	}
}
</script>
</head>

<body style="height:100%;width:100%;text-align:center;position:relative;background-image:url(images/背景5.jpg);

background-size:100% 1000px;">
<div style="position:absolute;
                text-align:center;
                width:300px;
                height:300px;
                border-radius:10px;
                border:solid rgb(100,100,100) 1px;
                margin:150px 520px;
               
                filter:alpha(opacity:30);
                opacity:0.7;
                position:absolute;">
            <br><br>   <form action="Register" method="post" id="form" onsubmit="return check(this);">
   
    <table align="center">
         <tr>
            
            <td><input type="hidden" name="methodNaem"value="0"/>
            账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
            <td>
                <input type="text" name="name" id="name"/>
                <div id="nameError" style="display:inline;color:red;"></div>
            </td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
            <td>
                <input type="password" name="password" id="password">
                <div id="passwordError" style="display:inline;color:red;"></div>
            </td>
        </tr>
        <tr>
            <td>确认密码：</td>
            <td>
                <input type="password" name="relpassword" id="relpassword">
                <div id="relpasswordError" style="display:inline;color:red;"></div>
            </td>
        </tr>
        <tr>
            <td>电话号码：</td>
            <td><input type="text" name="phone" id="phone"></td>
        </tr>
        <tr>
            <td>电子邮件：</td>
            <td><input type="text" name="email" id="email"></td>
        </tr>
        <tr>
            <td colspan="1">
            </td>
            <td>
                <input type="submit" value="注册"/>
                <input type="reset" value="重置"/>
                <a href="login.jsp" target="_blank">登录</a>
            </td>
        </tr>
    </table>
</form>
     </div>


</body>
</html>