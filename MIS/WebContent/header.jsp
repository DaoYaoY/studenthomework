<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.top{
      width:100%;
      height:40px;
      margin:60px 0px;
      margin-bottom:0px;
      background-color:orange;
      color:white;
      border:1px solid black;
      text-align:left;
      line-height:10px;      
      }
.top2{
      height:0px;
      border:none;
      margin-top:0px;
      text-align:center;
      
}
.righttop{
      background-color:white; 
      height:400px;
      width:100%;
      border:none;
      background-image:url();
      //margin:0px 0px;
}

.view{
      //float:right;
      color:blue;
      top:0px;
      text-align:right;
}

.leftbody{
      background-color:white;
      text-align:left;
      text-size:3;
      width:200px;
      height:200px;
      float:left;
      margin-left:60px;
      margin-right:30px;
}

.indiv1{
      text-align:left;
      text-size:3;
      width:400px;
      height:100px;
      //float:left;
      margin-left:60px;
      margin-right:30px;
}

.rightbody{
      background-color:Azure;
      text-align:center;
      text-size:5;
      width:400px;
      height:400px;
      float:right;
      margin-right:30px;
}

.rightbody2{
      background-color:LightCyan;
      text-align:center;
      text-size:5;
      width:288px;
      height:400px;
      float:right;
      margin-right:60px;
}

.bottom{
      background-color:white;
      font-family: "华文隶书";
      font-style: oblique;
      border:none;
      text-align:center;
      text-size:5;
      width:200px;
      height:200px;
      float:left;
      margin-left:60px;
}
.daohang a{
      height:40px;
      width:100px;
      float:left;
      text-decoration: none;
      text-align:center;
      color:white;
      margin-left:10px;
      line-height:40px;
      //margin-top:0px;
      //padding:2px;   多行显示居中填充方法
      background-color:MediumOrchid;
      //font-size:8px;
}
.daohang a:hover{
      height:40px;
      line-height:40px;
      float:left;
      margin-left:10px;
      background-color:red;
}
</style>
</head>
<body>
 <div style="background-color:white;color:black">           <p class="view"><font size="2"><a href="login.jsp"style="text-decoration:none;">登录</a>   <a href="register.jsp"style="text-decoration:none;"> 注册</a></font> </p><hr/>
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
<<<<<<< HEAD
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a> 美食</a>     </div>   
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a href="FindPage">手机</a>      </div>                                     <div class="daohang" style="float:right;">   <a>个人中心</a></div>  
=======
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a>美妆</a>     </div>   
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a href="FindPage">手机</a>      </div>                                     <div class="daohang" style="float:right;">   <a href="ListServlet">我的购物车</a></div>  
>>>>>>> b30a5cd9a4ccee1b38e9d12e0c37fc77637732c9
</div></div>


</div>


<link rel="stylesheet"type="text/css"href="MyStyle.css">
<script type="text/javascript">src="MoveEffect.js"</script>
<div id="photo-list"><ul id="scroll">
<li><a href="#"><img src="images/手机会场.jpg"width="400px"height="200px"alt=""/></a></li>
<li><a href="#"><img src="images/手机会场1.jpg"width="400px"height="200px"alt=""/></a></li>
</ul>
</div>
<div class="righttop">
    <img alt=""src="images/品牌街.jpg">
    <img alt="" src="images/苹果.jpg"style="width:200px;height:200px">
    <img alt="" src="images/华为.jpg"style="width:200px;height:200px">
    <img alt="" src="images/小米.jpg"style="width:200px;height:200px">
    <img alt="" src="images/vivo.jpg"style="width:200px;height:200px">
    <img alt="" src="images/联想.jpg"style="width:300px;height:200px">
</div>
<div class="righttop">
    <img alt=""src="images/今日秒杀.jpg">
    <img alt=""src="images/1.jpg"style="width:250px;height:250px">
    <img alt=""src="images/2.jpg"style="width:250px;height:250px">
    <img alt=""src="images/3.jpg"style="width:250px;height:250px">
    <img alt=""src="images/5.jpg"style="width:250px;height:250px">

</div>
<hr/>
<div class="bottom">
     <p>电脑版</p>
</div>

<div class="bottom">
      <p> 手机版 </p>
      </div>

<div class="bottom">
      <p> help</p>
      </div>

<div class="bottom">
      <p>提建议</p>

</div>



</div>

</body>
</html>