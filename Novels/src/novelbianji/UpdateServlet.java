package novelbianji;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {

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
		
		String novelname=String.valueOf(request.getParameter("novelname"));
		String novelnumber=String.valueOf(request.getParameter("novelnumber"));

		try{
    		String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	 		String url="jdbc:sqlserver://localhost:1433;databasename=Novels";
	 		String userName="sa";
	 		String passWord="123";
	 		Class.forName(driver);
	 		Connection conn=DriverManager.getConnection(url,userName,passWord);
	 		String sql="update novels set novelnumber=? where novelname=?";
	 		PreparedStatement ps=conn.prepareStatement(sql);
	 		ps.setString(1, novelnumber);
	 		ps.setString(2, novelname);
	 		ps.executeUpdate();
			ps.close();
		 	conn.close();
		 	 }catch(ClassNotFoundException e){
		 		 e.printStackTrace();
		 	}catch (SQLException e) {
		 		e.printStackTrace();
			}
			response.sendRedirect("novelxiugaiServlet");
	}

}
