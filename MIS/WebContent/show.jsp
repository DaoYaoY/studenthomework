<%@page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>登录成功</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
<meta http-equiv="description" content="This is my page"> 

<style type="text/css">

*{
            margin: 0px;
            padding: 0px;
        }
.banner{
            width: 790px;
            height: 340px;
            background-color: #fed93a;
            margin-top: 20px;
            margin-left: 20px;
            margin: 0px auto;
            overflow: hidden;
            position: relative;
        }
.banner .pic ul li{
            list-style: none;
        }
.left{
            width: 30px;
            height: 50px;
            position: absolute;
            top: 130px;
            left: 20px;
            background-color: rgba(0,0,0,0.5);
            color: #fff;
            text-align: center;
            line-height: 50px;

        }
.right{
            width: 30px;
            height: 50px;
            position: absolute;
            top: 130px;
            right: 20px;
            background-color: rgba(0,0,0,0.5);
            color: #fff;
            text-align: center;
            line-height: 50px;
        }
.dot{
            position: absolute;
            width: 124px;
            height: 30px;
            bottom: 30px;
            left: 315px;
            background-color: rgba(0,0,0,0.3);
            border-radius: 15px;
        }
.dot ul li{
            list-style: none;
            width: 15px;
            height: 15px;
            border-radius: 100%;
            background-color: #fff;
            float: left;
            margin: 7px 8px;
        }
.dot ul li:hover{
            background-color: #cd0b2d;
        }
</style>
    <script type="text/javascript">
$(function(){
    var num=1;
    var timer;
    var hasStarted = false;
    $(".banner .left").click(function(){
        stop();
        --num;
        num = num%$(".pic li").size();
        showpic(num);
    });
    $(".banner .right").click(function(){
        stop();
        ++num;
        num = num%$(".pic li").size();
        showpic(num);
    });
    function showpic(index){
        $(".pic li").eq(index).show().siblings().hide();
        $(".dot li").eq(index).css("background","red").siblings().css("background","#fff");
    }
    $(".dot li").hover(function () {
        stop();
        num = $(this).index();
        $(".pic li").eq(num).show().siblings().hide();
        $(this).css("background","red").siblings().css("background","#fff");
    },start);
    $(".pic li").each(function(index){
        $(this).hover(function(){
            stop();
            show(index);
            num = index+1;
        },start)
    });
    function start() {
        if(!hasStarted) {
            hasStarted = true;
            timer = setInterval(function(){
                showpic(num);
                num++;
                if(num== $(".pic li").size()){
                    num =0;
                }
            },2000);
        }
    }
    function stop() {
        clearInterval(timer);
        hasStarted = false;
    }
    start();
});
</script>

 </head>

<body>
    <div class="banner">
        <div class="pic">
            <div class="left"><</div>
            <ul>
                <li>
                    <a>
                        <img src="images/手机会场.jpg" >
                    </a>
                </li>
                <li>
                    <a>
                        <img src="images/2.jpg">
                    </a>
                </li>
                <li>
                    <a>
                        <img src="images/3.jpg">
                    </a>
                </li>
                <li>
                    <a>
                        <img src="images/4.jpg">
                    </a>
                </li>
            </ul>
            <div class="right">></div>
        </div>
        <div class="dot">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
</body>
</html> 