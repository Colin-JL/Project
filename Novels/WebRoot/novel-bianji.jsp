<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'novel-bianji.jsp' starting page</title>
    
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
    	padding-top:100px;
        width:100%;
    }
    #d2{
        opacity: 0.5;
        border-radius: 10px;
        background-color: white;
        margin-left: 50px;
        margin-top: 50px;
        width:15%;
        height: 300px;
        line-height: 50px;
        text-align: center;
        padding-top: 100px;
    }
    #d3{
        margin-top: 20px;
    }
    #d3 a{
        font-size: 20;
        text-decoration: none;
        color: black;
    }
    #d3 a:hover{
        width:100px;
        background-color:yellowgreen;
        color: red;
    }
    #d3:hover{
        display: block;
    }
    </style>
  </head>
  
    <body>
    <jsp:include page="nav.jsp"></jsp:include>
    <div id="d1">
        <div id="d2">
            <div id="d3"><a href="novel-tianjia.jsp">小说添加</a></div>
            <div id="d3"><a href="servlet/novelchaxunServlet">小说查询</a></div>
            <div id="d3"><a href="servlet/novelxiugaiServlet">小说修改</a></div>
        </div>
    </div>
</body>
</html>
