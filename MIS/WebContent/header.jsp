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
      background-color:MediumOrchid;
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
      background-color:LightCyan; 
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
      background-color:Thistle;
      text-align:left;
      text-size:3;
      width:400px;
      height:100px;
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
      background-color:Azure;
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
 <div style="background-color:Azure;">           <p class="view"><font size="2"><a href="login.jsp">登录</a>   <a href="register.jsp"> 注册</a></font> </p><hr/>
<div class="top2" align="center" >
            <img src="file://D:\百度图标.jpg" width=80px height=40px style="vertical-align:bottom;" />
            <input style="vertical-align:middle;"/>
            <a href="http://www.baidu.com">百度一下</a>
</div>

<div class="top" style="word-spacing=30px;" >
<div class="daohang"> 
           <div class="daohang" >      <a href="header.jsp">    首页   </a> </div>  
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"><a href="">食品</a>     </div>    
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a>服装</a>   </div>    
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a> 家居 </a> </div>      
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a>美妆</a>     </div>   
            <div class="daohang" onmouseover="this.className='daohang2'" onmouseout="this.classNamw='daohang'"> <a href="FindPage">手机</a>      </div>                                     <div class="daohang" style="float:right;">   <a>个人中心</a></div>  
</div></div>
<div class="righttop" ><a href="header.jsp">  <img alt="" src="images/timg.jpg" style="width:100%;height:400px;"></a>

</div>

<div class="leftbody">
         <a>     <img alt="" src="images/家居.jpg"style="width:400px;height:100px;">   </a>    
   
</div>

<div class="rightbody">
      <img alt="" src="images/手机.jpg" style="width:400px;height:400px;">
</div>

<div class="rightbody2">
    <a>      <img alt="" src="images/食品.jpg" style="width:288px;height:400px;"></a>
</div>

<div class="indiv1" style="background:DeepSkyBlue;">
         4
</div>
<div class="indiv1" style="background:PowderBlue;">
    <a>     <img alt="" src="images/cloth.jpg" style="width:400px;height:100px;"></a>
</div>

<div class="indiv1" style="background:SkyBlue;">
       <a>  <img alt="" src="images/运动.jpg" style="width:400px;height:100px;"></a>
</div>

<div class="indiv1" style="background:LightBlue;">
       <a> <img alt="" src="images/化妆品.jpg" style="width:400px;height:100px;"></a>
</div>

<hr/>
      <div class="bottom">
                                    <p style="font-size:20px;">  人物</p>
                        <p> 政治人物</p>
                     <p>  历史人物</p>
                       <p> 文化人物</p>
                     <p>  虚拟人物</p>
                      <p> 经济人物  </p>
      </div>

<div class="bottom">
                                    <p style="font-size:20px;">  人物</p>
                        <p> 政治人物</p>
                     <p>  历史人物</p>
                       <p> 文化人物</p>
                     <p>  虚拟人物</p>
                      <p> 经济人物  </p>
      </div>

<div class="bottom">
                                    <p style="font-size:20px;">  人物</p>
                        <p> 政治人物</p>
                     <p>  历史人物</p>
                       <p> 文化人物</p>
                     <p>  虚拟人物</p>
                      <p> 经济人物  </p>
      </div>

<div class="bottom">
                                    <p style="font-size:20px;">  人物</p>
                        <p> 政治人物</p>
                     <p>  历史人物</p>
                       <p> 文化人物</p>
                     <p>  虚拟人物</p>
                      <p> 经济人物  </p>
      </div>

<div class="bottom">
                                    <p style="font-size:20px;">  人物</p>
                        <p> 政治人物</p>
                     <p>  历史人物</p>
                       <p> 文化人物</p>
                     <p>  虚拟人物</p>
                      <p> 经济人物  </p>
      </div>

</div>

</body>
</html>