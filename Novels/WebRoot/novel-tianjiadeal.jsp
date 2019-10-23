<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="bookadd" class="novelbianji.BookBean"></jsp:useBean>
<jsp:setProperty property="*" name="bookadd"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'novel-tianjiadeal.jsp' starting page</title>
    
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
	 		String sql="insert into novels(novelname,novelwriter,noveltype,novelnumber) values(?,?,?,?)";
	 		PreparedStatement ps=conn.prepareStatement(sql);
	 		ps.setString(1,bookadd.getNovelname());
	 		ps.setString(2,bookadd.getNovelwriter());
	 		ps.setString(3,bookadd.getNoveltype());
	 		ps.setString(4,bookadd.getNovelnumber());
	 		int row=ps.executeUpdate();
	 		
		 	if(row>0){
		 %>	
		 <script>
			window.alert("您已成功添加！！！");
		</script>
			<%response.setHeader("refresh", "1;URL=novel-tianjia.jsp"); %>
		 <%
	 		}
	 		ps.close();
	 		conn.close();
	 		
	 	}catch(Exception e){
	 		out.print("小说添加失败！！！");
	 		e.printStackTrace();
	 	}
		%>
		
  </body>
</html>
