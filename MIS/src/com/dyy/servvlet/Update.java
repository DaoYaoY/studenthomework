package com.dyy.servvlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dyy.conser.Dao;
import java.sql.*;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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
		
		String name = request.getParameter("name");
		String pwd = request.getParameter("pssword");
		String mail = request.getParameter("email");
		String phone = request.getParameter("phone"); 
		
		Dao dao = new Dao();
		String sql = "update user set password=? and email=? and phone=? where name=?";
		try {
			Connection conn = dao.getCon();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, mail);
			ps.setString(3, phone);
			ps.setString(4, name);
			
			int rs = ps.executeUpdate();
			
			ps.close();
			conn.close();
			if(rs>0) {
				response.sendRedirect("user.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SQLException e) {
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
