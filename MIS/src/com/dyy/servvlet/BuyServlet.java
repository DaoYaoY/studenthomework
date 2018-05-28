package com.dyy.servvlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.dyy.bean.User;
import com.dyy.conser.Car;
import com.dyy.conser.CarItem;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 //TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String goodname = request.getParameter("name");
		Integer num =Integer.parseInt(request.getParameter("num"));
		
		
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("user");
		
		Car car = (Car) session.getAttribute("car");
		
		if(user!=null&&num!=null&&goodname!=null) {
			CarItem carItem = new CarItem();
			// UUID.randomUUID().toString()，一个随机且不重复的字符串，方便购物车项的查询
			carItem.setId(UUID.randomUUID().toString());
			carItem.setProduct(goodname);
			carItem.setNum(num);
			
			if(car==null) {
				car = new Car();
				session.setAttribute("car", car);
			}
			
			car.add(carItem);
			//out.println("<script language='javascript'>alert('购买成功！');window.location.href='response.sendRedirect(request.getHeader('Referer'))';</script>");
			JOptionPane.showMessageDialog(null, "购买成功");
			response.sendRedirect(request.getHeader("Referer"));
			
			
		}else {
			System.out.println("请先登录");
			response.sendRedirect("login.jsp");
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
