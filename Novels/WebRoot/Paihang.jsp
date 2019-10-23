<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Paihang</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
	#main{
		background-color:#1E90FF;
		height:600px;
	}    
	#main-right{
		margin-top:50px;
		margin-left: 20px;
        width:24%;
        height: 500px;
        float: left;
    }
    #main-right ol li a{
    	color:black;
    	text-decoration: none;
    }
    #main-right ol li a:hover{
    	color:red;
    }
    #main-title{
        text-align: left;
    }
    #main-neirong{
        line-height: 50px;
        list-style-type: none;
        text-decoration: none;
    }
    #mian-neirong ol li a{
    	text-decoration: none;
    }
    #tuijian-neirong{
    color: red;
    text-align: center;
    float: left;
    margin: 20px;
    padding-top:30px;
    }
    </style>
  </head>
  
  <body>
    <jsp:include page="nav.jsp"></jsp:include>
    <div id="main">
    <div id="main-right">
        <table boder="1">
        <h3 id="main-title">月票榜</h3>
        <ol id="main-neirong">
            <li class="main-neirong"><a href="#">1、山海密藏</a></li>
            <li class="main-neirong"><a href="#">2、马大妞和睦预计</a></li>
            <li class="main-neirong"><a href="#">3、我的空姐老婆</a></li>
            <li class="main-neirong"><a href="#">4、英雄联盟之最强路人王</a></li>
            <li class="main-neirong"><a href="#">5、追凶神探</a></li>
            <li class="main-neirong"><a href="#">6、疯语者</a></li>
            <li class="main-neirong"><a href="#">7、黄泉阴司</a></li>
            <li class="main-neirong"><a href="#">8、我给阎王当助理</a></li>
        </ol>
        </table>
	</div>
	<div id="main-right">
        <table boder="1">
        <h3 id="main-title">潜力榜</h3>
        <ol id="main-neirong">
            <li class="main-neirong"><a href="#">1、山海密藏</a></li>
            <li class="main-neirong"><a href="#">2、马大妞和睦预计</a></li>
            <li class="main-neirong"><a href="#">3、我的空姐老婆</a></li>
            <li class="main-neirong"><a href="#">4、英雄联盟之最强路人王</a></li>
            <li class="main-neirong"><a href="#">5、追凶神探</a></li>
            <li class="main-neirong"><a href="#">6、疯语者</a></li>
            <li class="main-neirong"><a href="#">7、黄泉阴司</a></li>
            <li class="main-neirong"><a href="#">8、我给阎王当助理</a></li>
        </ol>
        </table>
	</div>
	<div id="main-right">
        <table boder="1">
        <h3 id="main-title">新书榜</h3>
        <ol id="main-neirong">
            <li class="main-neirong"><a href="#">1、山海密藏</a></li>
            <li class="main-neirong"><a href="#">2、马大妞和睦预计</a></li>
            <li class="main-neirong"><a href="#">3、我的空姐老婆</a></li>
            <li class="main-neirong"><a href="#">4、英雄联盟之最强路人王</a></li>
        </ol>
        </table>
    </div>
    
    <div id="tuijian-neirong"><a href="#"><img src="novel/6d4bb633d4b0c3d9a4555dcfc1e86246.jpg" width="150" height="200"><br><b>我的空姐老婆</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/6e72d2ac3d74fd1c84fab1f71763b277_450x590.jpg" width="150" height="200"><br><b>无始不灭诀</b></a></div>
    </div>
  </body>
</html>
