package com.dyy.servvlet;

import com.dyy.conser.Dao;
import com.dyy.bean.User;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllServlet
 */
//@WebServlet("/AllServlet")
public class AllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String methodName = request.getParameter("method");
		int method = Integer.parseInt(methodName);
		try {
			switch(method){
			case 0:
				insert(request,response);break; //注册
			case 1:
				select(request,response);break;//登录
			case 2:
			    delete(request,response);break;//注销
			case 3:
				updata(request,response);break;//修改用户
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public Connection getcon() {
		Connection conn = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/web";
		String user = "root";
		String password = "111";
		conn=DriverManager.getConnection(url, user, password);
		if(conn!=null) { System.out.println("成功");}else {System.out.println("失败");}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public void close(Statement ps,Connection conn)throws SQLException {
		if(ps!=null) {
			ps.close();
		}
		if(conn!=null) {
			conn.close();
		}
	}
	public void insert(HttpServletRequest request ,HttpServletResponse response)throws ClassNotFoundException,SQLException{
		Connection conn=null;
		Statement ps=null;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		conn=getcon();
		ps = conn.createStatement();
		ps.execute("insert into user(name,password,email,phone)values('"+name+"','"+password+"','"+email+"','"+phone+"')");
		close(ps,conn);
	}
	public boolean select(HttpServletRequest request ,HttpServletResponse response)throws SQLException,ClassNotFoundException, IOException{
		Connection conn = null;
		PreparedStatement ps = null;
		boolean flag=false;
		String name = request.getParameter("name");
		String pass = request.getParameter("password");
		conn=getcon();
		
		ps= conn.prepareStatement("select * from user where name=? and password=?");
		   ps.setString(1, name);
		   ps.setString(2, pass);
		   ResultSet row=ps.executeQuery();
		   if(row.next()){
			   flag=true;
			   response.sendRedirect("login_fali.jsp");}
		   ps.close();
		   close(ps,conn);
		  // response.sendRedirect("login_fali.jsp");
		   return flag;
		}
	public boolean delete(HttpServletRequest request ,HttpServletResponse response)throws SQLException,ClassNotFoundException{
		Connection conn = null;
		PreparedStatement ps = null;
		String name = request.getParameter("name");
		boolean flag=false;
		conn = getcon();
		
		ps= conn.prepareStatement("delete from user where name=?");
		ps.setString(1, name);
		int a= ps.executeUpdate();
		if(a!=0) {
			flag=true;
		}else {
			flag=false;}
		conn.close();
		ps.close();
		
		return flag;
		
	}
	public boolean updata(HttpServletRequest request ,HttpServletResponse response)throws SQLException,ClassNotFoundException, IOException{
		Connection conn = null;
		PreparedStatement ps = null;
		String name = request.getParameter("name");
		String newpass = request.getParameter("newpassword");
		boolean flag=false;
		conn = getcon();
		
		ps= conn.prepareStatement("update user set password=? where name=?");
		ps.setString(1, newpass);
		ps.setString(2, name);
		int a= ps.executeUpdate();
		if(a!=0) {
			flag=true;
		}else {
			flag=false;}
		response.sendRedirect("login_fali.jsp");  //response.sendRedirect("");                  //重定向一个界面
		conn.close();
		ps.close();
		
		
		return flag;
		
	}
      
}