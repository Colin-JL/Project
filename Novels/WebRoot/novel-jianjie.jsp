<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'novel-jianjie.jsp' starting page</title>
    
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
        width:80%;
        hight:800px;
    }
    #d2{
        width:90%;
        height: 310px;
        padding-top: 100px;
        padding-left: 100px;
        border-bottom: 1px solid black;
    }
    #d3{
        width: 200px;
        height: 300px;
        float: left;
        margin-right: 50px;
    }
    #d4{
        height: 200px;
        margin-left: 50px;
        float: left;
    }
    #d5{
        height: 150px;
        line-height: 15px;
    }
    .p1{
        color:black;
    }
    #d6{
        width: 600px;
        margin-top: 5px;
        height: 40px;
        border: 1px solid grey;
        border-radius: 8px;
        background-color: rgb(189, 189, 189);
    }
    .p2{
        color: red;
    }
    .dd1{
        float: left;
    }
    #d7{
        margin-top: 10px;
    }
    #d8{
        height: 90px;
        margin-top: 20px;
        float: left;
    }
    #d9{
        height: 40px;
        width: 80px;
        float: left;
        border:1px solid brown;
        border-radius: 5px;
        background-color: brown;
    }
    #dword1{
        margin-top: 10px;
        margin-left: 8px;
    }
    #dword1 a{
        text-decoration: none;
        color: white;
    }
    #dword1 a:hover{
        font-weight: bold;
    }
    #d10{
        height: 40px;
        width: 80px;
        border:1px solid brown;
        border-radius: 5px;
        margin-left: 50px;
        float: left;
    }
    #dword2{
        margin-top: 10px;
        margin-left: 8px;
    }
    #dword2 a{
        text-decoration: none;
        color: black;
    }
    #dword2 a:hover{
        font-weight: bold;
    }
    #d11{
        width:100%;
        height: 300px;
        padding-top: 20px;
        padding-left: 100px;
    }
    #d12{
        height: 20px;
    }
    #d12 ul li{
        list-style-type: none;
        float: left;
        padding-left: 20px;
        font-size: 25px;
    }
    #d12 ul li a{
        text-decoration: none;
        font-family: 楷体;
        color: black;
    }
    #d12 ul li a:hover{
        color: brown;
    }
    #d12 ul li a:active{
        color:  brown;
    }
    #d12 ul li a:visited{
        color: brown;
    }
    #d13{
        margin: 20px;
        height: 100px;
        float: none;
        width: 1000px;
        border: 1px solid grey;
        background-color:lightgreen;
        border-radius: 5px;
    }
    #p1{
        text-indent: 2em;
    }
    </style>
  </head>
  
  <body>
  <jsp:include page="nav.jsp"></jsp:include>
     <div id="d1">
        <div id="d2">
            <div id="d3">
                <a href="#"><img src="novel/21aae5ab187d7d7c08b62273a82dbf39.jpg" alt="" width="200px" height="300px"></a>
            </div>
            <div id="d4">
                <div id="d5">
                    <h2>麻衣神探</h2>
                    <p class="p1">御风楼主人</p>
                    <p class="p1">分类：悬疑灵异</p>
                    <p class="p1">标签：悬疑,惊悚,刑侦,推理,风水 </p>
                    <p class="p1">字数：1046707</p>
                </div>
                <div id="d6">
                    <div id="d7">
                    <dd class="p2 dd1">连载中:</dd>
                    <dd class="dd1">更新至第四百七十七章 蛊王</dd>
                    </div>
                </div>
                <div id="d8">
                        <div id="d9">
                            <div id="dword1"><a href="#">立即阅读</a></div>
                        </div>
                        <div id="d10">
                            <div id="dword2"><a href="#">加入书架</a></div>
                        </div>
                    </div>
            </div>
        </div>
        <div id="d11">
            <div id="d12">
                <ul>
                    <li><a href="#">简介</a></li>
                    <li><a href="#">目录</a></li>
                    <li><a href="#">评论</a></li>
                </ul>
            </div>
            <div id="d13">
                <p id="p1">     
                        我叫曌远，我师傅学了相术能看穿人心，被七里八乡村民称颂为天师，然而在我十五岁那年，他被人挖坟掘墓，整个人皮被剥掉挂在树上。
                        村里人都说师傅是因为泄漏天机太多，遭了老天爷的报应。
                        而学了相术的我知道言多必失，早有这么一天，我也会步入师傅后尘，却没想到报应来的如此之快。
                        那一天，同样的地方，在同一棵树上，挂了一具人皮女尸……
                </p>
            </div>
        </div>   
    </div>
  </body>
</html>
