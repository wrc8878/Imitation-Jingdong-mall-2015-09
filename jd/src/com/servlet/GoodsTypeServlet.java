package com.servlet;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GoodsTypeDao;
import com.dao.ImagesDao;
import com.pojo.GoodsInfo;
import com.pojo.GoodsType;
import com.pojo.Images;

public class GoodsTypeServlet extends HttpServlet {
	GoodsTypeDao goodsTypeDao  =new GoodsTypeDao();
	ImagesDao imagesDao  = new ImagesDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		if("getallgoodsbyid".equals(method)){
			doGetAllGoodsById(request,response);
		}
		if ("getgoodsbyid".equals(method)) {
			doGetGoodsById(request,response);
		}
		if ("getgoodsbyprice".equals(method)) {
			doGetGoodsByPrice(request,response);
		}
	}
	private void doGetGoodsByPrice(HttpServletRequest request,
			HttpServletResponse response) {
		String goodsprice= request.getParameter("goodsprice");
		int page = 1;
		int size = 16;		
		// 从客户端取值
		String pageString = request.getParameter("page");
		if (pageString != null) {
			page = Integer.parseInt(pageString);
		}
		String sizeString = request.getParameter("size");
		if (sizeString != null) {
			size = Integer.parseInt(sizeString);
		}
		/*0-1399*/
		int begin = Integer.parseInt(goodsprice.substring(0, 1));
		System.out.println("起点"+begin);
		int end = Integer.parseInt(goodsprice.substring(2, 6));
		System.out.println("终点"+end);
		//Map map = imagesDao.price1(page, size, begin, end);
		Map map = imagesDao.price2(page, size, begin, end);
		System.out.println("asdsfa");
		request.setAttribute("map", map);

		/*1400-8599
		int begin2 = Integer.parseInt(goodsprice.substring(0, 4));
		int end2 = Integer.parseInt(goodsprice.substring(5, 9));
		Map map2 = imagesDao.price2(page, size, begin2, end2);
		request.setAttribute("map", map2);
		*/
		/*8600-16599
		int begin = Integer.parseInt(goodsprice.substring(0, 4));
		int end = Integer.parseInt(goodsprice.substring(5, 10));	
		*/
			List<GoodsInfo> goods = goodsTypeDao.getallgoods();
		HttpSession session = request.getSession();
		session.setAttribute("goods", goods);	
		
		try {
			request.getRequestDispatcher("allgoods.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	private void doGetGoodsById(HttpServletRequest request,
			HttpServletResponse response) {
		
		String goodsid= request.getParameter("goodsid");
		int id = Integer.parseInt(goodsid);
		
		int page = 1;
		int size = 16;	
		
		int page1 = 3;
		int size1 = 4;
		// 从客户端取值
		String pageString = request.getParameter("page");
		if (pageString != null) {
			page = Integer.parseInt(pageString);
		}
		String sizeString = request.getParameter("size");
		if (sizeString != null) {
			size = Integer.parseInt(sizeString);
		}
		
		String page2= request.getParameter("page1");
		if (page2 != null) {
			page1 = Integer.parseInt(page2);
		}
		String size2 = request.getParameter("size1");
		if (size2 != null) {
			size1 = Integer.parseInt(size2);
		}
		// 怎么去查
		Map map = imagesDao.fenye1(id, page, size);
		request.setAttribute("map", map);
					
		Map map1 = imagesDao.fenye(page1, size1);
		request.setAttribute("map1", map1);
		
		List<GoodsInfo> goods = goodsTypeDao.getallgoods();
		HttpSession session = request.getSession();
		session.setAttribute("goods", goods);	
		try {
			request.getRequestDispatcher("allgoods.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void doGetAllGoodsById(HttpServletRequest request,
			HttpServletResponse response) {	
		/*
		String goodsid = request.getParameter("goodsid");
		int id = Integer.parseInt(goodsid);
		List<Images> imagesbyid = imagesDao.findgoodsbyid(id);
		request.getSession().setAttribute("imagesbyid", imagesbyid);
		*/
		int page = 1;
		int size = 16;	
		
		int page1 = 3;
		int size1 = 4;
		// 从客户端取值
		String pageString = request.getParameter("page");
		if (pageString != null) {
			page = Integer.parseInt(pageString);
		}
		String sizeString = request.getParameter("size");
		if (sizeString != null) {
			size = Integer.parseInt(sizeString);
		}
		
		String page2= request.getParameter("page1");
		if (page2 != null) {
			page1 = Integer.parseInt(page2);
		}
		String size2 = request.getParameter("size1");
		if (size2 != null) {
			size1 = Integer.parseInt(size2);
		}
		// 怎么去查
		Map map = imagesDao.fenye(page, size);
		request.setAttribute("map", map);
							
		Map map1 = imagesDao.fenye(page1, size1);
		request.setAttribute("map1", map1);
		/*
		List<Images> images = imagesDao.getallimages();
		request.getSession().setAttribute("images", images);
		*/
		List<GoodsInfo> goods = goodsTypeDao.getallgoods();
		HttpSession session = request.getSession();
		session.setAttribute("goods", goods);	
		try {
			request.getRequestDispatcher("allgoods.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
}
