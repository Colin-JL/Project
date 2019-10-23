<%@page import="novelbianji.BookBean"%>
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
    	float:left;
    	margin-left:10%;
        margin-top:100px;
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
        	<table width="700px" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FF8247">
        		<tr>
        			<th>小说名</th>
        			<th>作者</th>
        			<th>类型</th>
        			<th>字数</th>
        			<th>修改字数</th>
        		</tr>
        		<%
    				List<BookBean> list=(List<BookBean>) request.getAttribute("list");
    				if(list==null || list.size()<1){
    				out.print("没有任何信息!");
    			}else{
    				for(BookBean book : list){
    		%>
        		<tr align="center">
        			<td><%=book.getNovelname() %></td>
        			<td><%=book.getNovelwriter() %></td>
        			<td><%=book.getNoveltype() %></td>
        			<td><%=book.getNovelnumber() %></td>
        			<td>
        				<form action="servlet/UpdateServlet" method="post" onsubmit="return check(this);">
        					<input type="hidden" name="novelname" value="<%=book.getNovelname() %>">
        					<input type="text" name="novelnumber" size="3">
        					<input type="submit" value="修改">
        				</form>
        			</td>
        		</tr>
        		<%
        			}
        		}
        		%>
        	</table>
        </div>
     </div>
 </body>