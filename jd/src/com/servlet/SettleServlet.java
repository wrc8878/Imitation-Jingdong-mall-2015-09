package com.servlet;


import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SettleDao;
import com.pojo.PayInfo;
import com.pojo.ReceiveInfo;

public class SettleServlet extends HttpS SettleDao settleDao  = new SettleDao();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		if ("getall".equals(method)) {
			doGetAll(request,response);
		}
		if ("addreceive".equals(method)) {
			doAddReceive(request,response);
		}
		if ("test".equals(method)) {
			doTest(request,response);
		}
	}

	private void doTest(HttpServletRequest request, HttpServletResponse response) {
		String members = request.getParameter("membersid");
		int membersid  = Integer.parseInt(members);
		List<ReceiveInfo> receive = settleDao.getallrecinfo(membersid);
		HttpSession session = request.getSession();
		session.setAttribute("receive", receive);
		System.out.println("shenme");
		try {
			request.getRequestDispatcher("settle.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//添加收货人信息
	private void doAddReceive(HttpServletRequest request,
			HttpServletResponse response) {
		String members = request.getParameter("members");
		
		int membersid = Integer.parseInt(members);
		System.out.println(membersid);
		String recname = request.getParameter("recname");
		String recprovince = request.getParameter("province");
		String reccity = request.getParameter("city");
		String recarea = request.getParameter("area");
		String recaddr = request.getParameter("detailadd");
		String phone = request.getParameter("phone");
		System.out.println(phone);
		int recphone = Integer.parseInt(phone);
		
		int n = settleDao.insertRec(membersid, recname, recprovince, reccity, recarea, recaddr, recphone);
		if (n>0) {		
			System.out.println("存进去了");
			List<ReceiveInfo> receive = settleDao.getallrecinfo(1);
			HttpSession session = request.getSession();
			session.setAttribute("receive", receive);
			System.out.println("取出来了么");
			for (ReceiveInfo receiveInfo : receive) {
				System.out.println(receiveInfo.getRecname());
			}
		}
		
		
	}

	//跳到结算页获取支付方式等     没用上
	private void doGetAll(HttpServletRequest request,
			HttpServletResponse response) {
		String members = request.getParameter("membersid");
		int membersid  = Integer.parseInt(members);
		List<ReceiveInfo> receive = settleDao.getallrecinfo(membersid);
		HttpSession session = request.getSession();
		session.setAttribute("receive", receive);
		for (ReceiveInfo receiveInfo : receive) {
			System.out.println(receiveInfo.getRecname());
		}
		try {
			request.getRequestDispatcher("test1.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
