package com.dyy.servvlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dyy.bean.Goods;
import com.dyy.bean.Page;

/**
 * Servlet implementation class FindServlet
 */
//@WebServlet("/FindServlet")
public class FindPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.getWriter().append("Served at: ").append(request.getContextPath());
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=UTF-8");
		        int pages;
				int currpage = 1;
				if(request.getParameter("page")!=null) {
					currpage  = Integer.parseInt(request.getParameter("page"));
				}
				Page pagedao= new Page();
				try {
					List<Goods> list = pagedao.find(currpage);
					request.setAttribute("list", list);
					int count = pagedao.findcount();
					if(count%Goods.page_size==0) {
						pages = count/Goods.page_size;
					}else {
						pages = count/Goods.page_size+1;
					}
					StringBuffer sb = new StringBuffer();
					for(int i=1;i<=pages;i++) {
						if(i==currpage) {sb.append("*"+i+"*");
						}else {
						sb.append("<a href='FindPage?page="+i+"'>"+i+"</a>");
						}sb.append(" ");
					}
					request.setAttribute("bar", sb.toString());
					System.out.println("chenggong");
					request.getRequestDispatcher("goodslist.jsp").forward(request, response);
					
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
