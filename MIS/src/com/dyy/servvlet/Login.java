package com.dyy.servvlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dyy.conser.Dao;
import com.dyy.bean.*;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		Dao dao = new Dao();
		Connection conn;
		try {
			conn = dao.getCon();
		
		PreparedStatement ps = null;
		
		String name = request.getParameter("name");
		String pass = request.getParameter("password");		
/**		User user  = new User();
	*	user.setName(name);
	*	user.setPassword(pass);
	*	if(name !=null&& !name.trim().equals("")) {
	*		Cookie cookie = new Cookie("name",name);
	*		cookie.setMaxAge(30);
	*		response.addCookie(cookie);
	*	}else {
	*		Cookie [] cookies = request.getCookies();
	*		for(Cookie cookie:cookies) {
	*			String cookiename = cookie.getName();
	*			if("name".equals(cookiename)) {
	*				String val = cookie.getValue();
	*				name = val;
	*			}
	*		}
	*	}
	*	if(name!=null&&!name.trim().equals("")) 
	*	{
	*		System.out.println("hello:"+name);
	*	}*/
		
		ps= conn.prepareStatement("select * from user where name=? and password=?");
		   ps.setString(1, name);
		   ps.setString(2, pass);
		   ResultSet row=ps.executeQuery();
		   if(row.next()){
			   request.getSession().setAttribute("name", name);
			   String named = row.getString("name");
			   System.out.println(named);
			   request.setCharacterEncoding("utf-8");
			   Cookie cookie = new Cookie("cookie",name.trim());
			   cookie.setMaxAge(10);
			   response.addCookie(cookie);
			   response.sendRedirect("header.jsp");
			      
		   }else {
			   //System.out.println("密码或账户错误！！");
			   response.sendRedirect("login_fali.jsp");
		   }
		   dao.close(conn, ps, row);
		  // response.sendRedirect("login_fali.jsp");
		}catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
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

}
