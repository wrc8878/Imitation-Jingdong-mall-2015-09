package com.servlet;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CarDao;
import com.dao.GoodsDao;
import com.pojo.Images;

public class CarServlet extends HttpServlet {
/*
	CarDao carDao  = new CarDao();
	GoodsDao goodsDao  =new GoodsDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("addcar1".equals(method)) {
			doAddCar1(request,response);
		}
	}

	private void doAddCar1(HttpServletRequest request,
			HttpServletResponse response) {
		
		String imagesid = request.getParameter("imagesid");
		int id = Integer.parseInt(imagesid);
		
		String num = request.getParameter("num");
		int gnum = Integer.parseInt(num);
		
		String membersid = request.getParameter("membersid");
		int mid = Integer.parseInt(membersid);
		
		String price = request.getParameter("price");
		
		int n = carDao.addcar(mid, id, gnum,price);
		
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
		if (n>0) {
			
				try {
					request.getRequestDispatcher("successaddcar.jsp").forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			
		}

		
	}
*/
}
