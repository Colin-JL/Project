<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	    <style>
    #d1{
        width:100%;
        height: 628px;
        margin:0px;
        padding:0px;
        background-image:url(novel/13949846_1348041122879.jpg);
        background-repeat:no-repeat;
    }
    .d1{
        background-size:100% 100%;
    }
    #d2{
        width:100%;
        height: 20%;
    }
    #d3{
        width:100%
        height: 79%;
    }
    #d4{
        width:250px;
        height: 250px;
        background-color:white;
        margin-left:40%;
        margin-top:70px;
        opacity:0.7;
        border-radius:10px;
    }
    .logo-img{
        color:white;
        padding-top: 15px;
        padding-left: 20px;
        width:300px;
        height: 80px;
    }
    ol{
        margin: 15px;
        padding: 15px;
    }
    ol li{
        list-style-type: none;
        width: 150px;
        height: 30px;
    }
    ol li a{
        line-height:25px;
        list-style-type: none;
        color: red;
        width: 148px;
        text-decoration: none;
        background: gray;
    }
    #l0{
        color:brown;
        font-family:楷体;
        font-weight:bold;
        font-size:20px;
    }
    #l{
        font-family:楷体;
        font-weight:bold;
    }
    </style>
  </head>
  
  <body>
  <div id="d1" class="d1">
    <div id="d2">
        <img class="logo-img" src="novel/newlogo.png"> 
    </div>
    <div id="d3">
        <div id="d4">
                <form action="dengludeal.jsp" method="post" name="form1">
                <ol>
                <li id="l0">用户登录<br></li>
                <li id="l">用户名</li>
                <li><input type="text" name="username" id="username"></li>
                <li id="l">密&emsp;码</li>
                <li><input type="password" name="password" id="password"></li>
                <input type="submit" name="submit" value="登录"></a>
                </ol> 
                </form>                

        </div>
    </div>
</div>
  </body>
</html>
