package com.servlet;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;
import javax.imageio.ImageIO;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.GoodsTypeDao;
import com.dao.ImagesDao;
import com.pojo.GoodsType;
import com.pojo.Images;

public class ImagesServlet extends HttpServlet {
	ImagesDao imagesDao  = new ImagesDao();
	GoodsTypeDao goodsTypeDao = new GoodsTypeDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		if("getallimages".equals(method)){
			doGetAllImages(request,response);
		}
		if ("getcode".equals(method)) {
			doGetCode(request,response);
		}
		
		
		
	

		
	}
	
	//检查验证码
	private void doGetCode(HttpServletRequest request,
			HttpServletResponse response) {
		String code = request.getParameter("code");
		String realcode = (String) request.getSession().getAttribute("code");

		if (code.equals(realcode)) {
			try {
				response.getWriter().print("正确");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().print("验证码不正确");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	private void doGetAllImages(HttpServletRequest request,
			HttpServletResponse response) {
		List<Images> images = imagesDao.getallimages();
		HttpSession session = request.getSession();
		session.setAttribute("images", images);
		
		/*
		List<GoodsType> goodstype = goodsTypeDao.getallgoodstype();
		HttpSession session1 = request.getSession();
		session1.setAttribute("goodstype", goodstype);
		*/
		
		try {
			response.sendRedirect("main.jsp");
			return;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
}
