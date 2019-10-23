<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'nav.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <style type="text/css">
 	div{
        border-radius:10px;
    }
    #d1{
        width:100%;
        height: 1400px;
        margin:0px;
        padding:0px;
        background-image:url(novel/01371c57e82ecd0000018c1bc53ae3.jpg@2o.jpg);
        background-repeat:no-repeat;
    }
    .d1{
        background-size:100% 100%;
    }
    #container{
        width: 980px;
        border: 1px solid black;
    }
    #top{
        width:100%;
        height: 120px;
        background-colo:lightgreen;
    }
    #logo{
        width: 30%;
        float: left;
        padding-top: 5px;
        }
    .logo-img{
        padding-top: 15px;
        padding-left: 20px;
        width:300px;
        height: 80px;
    }
    #search{
        width: 50%;
        float: left;
        padding-top: 15px;
        border-color: gray;
        height: 20px;
    }
    .search-text{
        width: 500px;
        height: 50px;
        padding-top: 30px;
        float: left;
        font-size: 40px;
        display: block;
    }
    .search-btn{
        width:50px;
        height: 50px;
        padding-top: 10px;
        background-color:brown;
        font-size: 20px;
    }
    ul li{
        list-style-type: none;
        float: left;
    }
    ul li a{
        color: blue;
        text-decoration: none;
        display: block;
        line-height: 25px;
        padding-right:10px;
    }
    #login{
        color: black;
        width: 19%;
        height:80px;
        float: left;
        padding-left: 10px;
        padding-top: 40px;
        font-size: 15px;
    }
    #nav{
        margin: 0 auto;
        width:100%;
        height: 50px;
        background-color:dimgray;
        padding-top: 2px;
        line-height: 50px;
        position: fixed;
        position: absolute;
    }
    #nav ul li{
            list-style-type: none;
            float: left;
            width: 20%;
            height: 30px;   
        }
    #nav ul li a{
        color:white;
        font-size: 25px;
        font-family: 楷体;
        text-decoration: none;
        display: block;
        text-align: center;
        line-height: 30px;
    }
    #nav ul li ul li{
            height:50px;
            width:250px;
        }
    #nav ul li ul li a {
            background-color:dimgray;
            width:150px;
            line-height: 50px;
        }
    #nav ul li a:hover{
            background-color: brown;
        }
    #nav ul li ul{
            display: none;
        }
    #nav ul li:hover ul{
            display: block;
        }
  </style>
  </head>
  
  <body>
    <div id="top">
        <div id="logo">
            <a href="#"><img class="logo-img" src="novel/newlogo.png"> 
        </div>
        <div id="search">
            <input type="text" name="keyWord"class="search-text">
            <input type="submit" name="submit" value="搜索" class="search-btn">
            <ul>
                <li>热搜：</li>           
                    <li>
                    <a href="#">枭雄</a> 
                    </li>
                    <li>
                    <a href="#">天蚕土豆</a> 
                    </li>
                    <li>
                    <a href="#">行走阴阳</a> 
                    </li>
                    <li>
                    <a href="#">山海秘藏</a> 
                    </li>                    
                    <li>
                    <a href="#">黄河伏妖传</a> 
                    </li>         
            </ul>
        </div>
        <div id="login">
            <div>
                <ul>
                    <li><a href="denglu.jsp" rel="nofollow">登录</a></li>
                    <li><a href="#" rel="nofollow">注册</a></li>
                </ul>
            </div>
        </div>
    </div>
<div id="nav">
    <nav>
        <ul>
            <li><a href="Top.jsp">首页</a></li>
            <li><a href="Paihang.jsp">排行</a></li>
            <li><a href="#">分类</a></li>
            <li><a href="#">完本</a></li>
            <li>
                <a href="#">作者中心</a>
                <ul>
                <li><a href="novel-bianji.jsp">小说编辑</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
  </body>
</html>