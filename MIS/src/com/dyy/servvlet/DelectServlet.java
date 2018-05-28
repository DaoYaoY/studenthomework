package com.dyy.servvlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dyy.bean.*;
import com.dyy.conser.Car;

/**
 * Servlet implementation class DelectServlet
 */
@WebServlet(description = "ɾ�����ﳵ��Ʒ", urlPatterns = { "/DelectServlet" })
public class DelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		User user = (User)session.getAttribute("user");
		Car car = (Car)session.getAttribute("car");
		
		String id = request.getParameter("id");
		
		if(user!=null) {
			if(car!=null&&id!=null&&!"".equals(id)) {
				car.remove(id);
			}else {
				System.out .println("��û�й��ﳵ");
			}
		}else {
			System.out .println("����û�е�¼     <a href='login.jsp'>��¼</a>");
		}
		
	}

}
