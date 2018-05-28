package com.dyy.servvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dyy.bean.User;
import com.dyy.conser.Car;
import com.dyy.conser.CarItem;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Car car = (Car) session.getAttribute("car");
		User user = (User) session.getAttribute("user");
		if (user == null){
						//out.println("还没登录。<a href='login.jsp'>请登录</a>");
						response.sendRedirect("login.jsp");
						return;
						}
		response.sendRedirect("list_car.jsp");
		//out.println("<b>" + user.getName() + "</b> 的购物车<br/>");
		if (car!= null){
				for (CarItem carItem : car.list()){
					out.println("商品：" + carItem.getProduct() + " 数量：" + carItem.getNum() + " <a href='DelectServlet?id=" + carItem.getId() + "'>删除</a>");
					out.println("<hr>");
					}
		}else{
                       out.println("还没购物车，所以没内容");
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
