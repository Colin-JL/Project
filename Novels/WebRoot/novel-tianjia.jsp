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
        width:100%;
        float: left;
    }
    #d2{
        float: left;
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
    #d4{
        float: left;
        width:250px;
        height: 360px;
        background-color:white;
        margin-left:25%;
        margin-top:100px;
        opacity:0.7;
        border-radius:10px;
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
    <jsp:include page="nav.jsp"></jsp:include>
     <div id="d1">
        <div id="d2">
            <div id="d3"><a href="novel-tianjia.jsp">小说添加</a></div>
            <div id="d3"><a href="servlet/novelchaxunServlet">小说查询</a></div>
            <div id="d3"><a href="servlet/novelxiugaiServlet">小说修改</a></div>
        </div>
        <div id="d4">
                <form action="novel-tianjiadeal.jsp" method="post" onsubmit="return check(this)">
                <ol>
                <li id="l0">小说添加<br></li>
                <li id="l">小说名:</li>
                <li id="l"><input type="text" name="novelname" width="200px"><br></li>
                <li id="l">作&emsp;者:</li>
                <li id="l"><input type="text" name="novelwriter" width="200px"><br></li>
                <li id="l">类&emsp;型:</li>
                <li id="l"><input type="text" name="noveltype" width="200px"><br></li>
                <li id="l">字&emsp;数:</li>
                <li id="l"><input type="text" name="novelnumber" width="200px"><br></li>
                <li><input type="submit" value="添加"></a></li>
                </ol>  
            	</form>
        </div>
    </div>
</body>
</html>