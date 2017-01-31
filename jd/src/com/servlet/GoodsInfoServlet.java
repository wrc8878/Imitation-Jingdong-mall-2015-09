package com.servlet;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GoodsDao;
import com.dao.OthersDao;
import com.pojo.Images;
import com.pojo.Others;

public class GoodsInfoServlet extends HttpServlet {
	GoodsDao goodsDao = new GoodsDao();
	OthersDao othersDao = new OthersDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("findbyid".equals(method)) {
			doFindById(request,response);
		}
		if ("addcar".equals(method)) {
			doAddCar(request,response);
		}
		if ("gocar".equals(method)) {
			doGoCar(request,response);
		}
		if ("change".equals(method)) {
			doChange(request,response);
		}
		
		if ("delfromcar".equals(method)) {
			doDelFromCar(request,response);
		}
		
	}

	//从购物车删除
	private void doDelFromCar(HttpServletRequest request,
			HttpServletResponse response) {
		String imagesid = request.getParameter("imagesid");
		int id = Integer.parseInt(imagesid);
		
		Images goods = goodsDao.findbyid(id);

		// 先取session
		HttpSession session = request.getSession();

		Map<Images, Integer> map = (Map<Images, Integer>) session
				.getAttribute("map");

		map.remove(goods);

		try {
			response.sendRedirect("car.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	//ajax
	private void doChange(HttpServletRequest request,
			HttpServletResponse response) {
		String op = request.getParameter("op");
		// 取编号
		String imagesid = request.getParameter("id");
		int id = Integer.parseInt(imagesid);
	
		
		HttpSession session = request.getSession();

		// 取map
		Map<Images, Integer> map = (Map<Images, Integer>) session
				.getAttribute("map");

		Images goods = goodsDao.findbyid(id);
		
		if ("jia".equals(op)) {
			map.put(goods, map.get(goods) +1);
		}
		if ("jian".equals(op)) {
			map.put(goods, map.get(goods) -1);
		}

		
	}
	//查看购物车
private void doGoCar(HttpServletRequest request,
			HttpServletResponse response) {
	String username = request.getParameter("username");
	
	if (username=="") {	
		try {
				response.sendRedirect("login.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	else{		
		try {
			response.sendRedirect("car.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
		
	}
//加入购物车
	private void doAddCar(HttpServletRequest request,
			HttpServletResponse response) {
		String imagesid = request.getParameter("imagesid");
		int id = Integer.parseInt(imagesid);
		
		String num = request.getParameter("num");
		int gnum = Integer.parseInt(num);
		
		Images images = goodsDao.findbyid(id);
		// 得到session
		HttpSession session = request.getSession();

		Map<Images, Integer> map = (Map<Images, Integer>) session
				.getAttribute("map");

		if (map == null) {
			map = new HashMap<Images, Integer>();
		}

		Integer goodsnum = map.get(images);

		if (goodsnum == null) {
			map.put(images, gnum);
		} else {
			map.put(images, gnum + goodsnum);
		}

		session.setAttribute("map", map);

		// 用转发会是什么结果呢？ 不能刷新
		
		try {
			response.sendRedirect("successaddcar.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
		/*
		try {
			request.getRequestDispatcher("successaddcar.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	*/
		
		
	}

	private void doFindById(HttpServletRequest request,
			HttpServletResponse response) {
		String imagesid = request.getParameter("imagesid");
		int id = Integer.parseInt(imagesid);		
		Images images = goodsDao.findbyid(id);
		request.setAttribute("images", images);
		
		//Others others = othersDao.getallothers();
		List<Others> others = othersDao.getall();
		//System.out.println(others.getMedicine());
		HttpSession session = request.getSession();
		session.setAttribute("others", others);
		
		
		try {
			request.getRequestDispatcher("showDetail.jsp").forward(request, response);
			//response.sendRedirect("test.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}
}
