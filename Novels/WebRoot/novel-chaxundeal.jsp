<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="bookchaxun" class="novelbianji.BookBean"></jsp:useBean>
<jsp:setProperty property="*" name="bookchaxun"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'novel-chaxundeal.jsp' starting page</title>
    
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
	 		String url="jdbc:sqlserver://localhost:1433;databasename=Novels";
	 		String userName="sa";
	 		String passWord="123";
	 		Class.forName(driver);
	 		Connection conn=DriverManager.getConnection(url,userName,passWord);
	 		String sql="Select * form novels";
	 		Statement stmt=conn.createStatement();
	 		ResultSet rs=stmt.executeQuery(sql);
	 		if(rs.next()){
	 			session.setAttribute("novelname",bookchaxun.getNovelname());
	 			session.setAttribute("novelwriter",bookchaxun.getNovelwriter());
	 			session.setAttribute("noveltype",bookchaxun.getNoveltype());
	 			session.setAttribute("novelnumber",bookchaxun.getNovelnumber());
			 	response.sendRedirect("novel_list.jsp");
			 }
			 rs.close();
		 	 stmt.close();
		 	 conn.close();
		 	 }catch(Exception e){
		 		out.print("用户名或密码错误！！！");
		 		response.sendRedirect("fail.jsp");
		 		e.printStackTrace();
		 	}
	%>
  </body>
</html>
