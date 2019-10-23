package novelbianji;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

public class novelchaxunServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try{
    		String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	 		String url="jdbc:sqlserver://localhost:1433;databasename=Novels";
	 		String userName="sa";
	 		String passWord="123";
	 		Class.forName(driver);
	 		Connection conn=DriverManager.getConnection(url,userName,passWord);
	 		String sql="Select * from novels";
	 		Statement stmt=conn.createStatement();
	 		ResultSet rs=stmt.executeQuery(sql);
	 		List<BookBean> list=new ArrayList<BookBean>();
	 		while(rs.next()){
	 			BookBean book=new BookBean();
	 			book.setNovelname(rs.getString("novelname"));
	 			book.setNovelwriter(rs.getString("novelwriter"));
	 			book.setNoveltype(rs.getString("noveltype"));
	 			book.setNovelnumber(rs.getString("novelnumber"));
	 			list.add(book);
			 }
	 		request.setAttribute("list", list);
			 rs.close();
		 	 stmt.close();
		 	 conn.close();
		 	 }catch(ClassNotFoundException e){
		 		 e.printStackTrace();
		 	}catch (SQLException e) {
		 		e.printStackTrace();
			}
		request.getRequestDispatcher("/novel_list.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
