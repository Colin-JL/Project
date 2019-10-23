<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="use" class="com.zhanghao.users"></jsp:useBean>
<jsp:setProperty property="*" name="use"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dengludeal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <% 
     	try{
		 		String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
		 		String url="jdbc:sqlserver://localhost:1433;databasename=db_user";
		 		String userName="sa";
		 		String passWord="123";
		 		Class.forName(driver);
		 		Connection conn=DriverManager.getConnection(url,userName,passWord);
		 		String sql="select * from username where name=? and pwd=?";
		 		PreparedStatement ps=conn.prepareStatement(sql);
		 		ps.setString(1,use.getUsername());
		 		ps.setString(2,use.getPassword());
		 		ResultSet rs=ps.executeQuery();
			 	if(rs.next()){	
			 		session.setAttribute("username",use.getUsername());
			 		response.sendRedirect("Top.jsp");
			 	}
		 		rs.close();
		 		ps.close();
		 		conn.close();
		 		
		 	}catch(Exception e){
		 		out.print("用户名或密码错误！！！");
		 		response.sendRedirect("fail.jsp");
		 		e.printStackTrace();
		 	}
	%>
  </body>
</html>
