package com.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.pojo.MembersInfo;

public class UserServlet extends HttpServlet {
	UserDao userDao = new UserDao();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		
		if ("getuserbyusername".equals(method)) {	
			doGetUserByUsername(request,response);
		}
		if ("regist".equals(method)) {
			doRegist(request,response);
		}
		if ("findfromsql".equals(method)) {
			doFindFromSql(request,response);
		}
	
	}

	
	//ajax
	private void doFindFromSql(HttpServletRequest request,
			HttpServletResponse response) {
		String username = request.getParameter("username");
		if (username==null) {
			try {
				response.getWriter().print("用户名不能为空");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
		boolean f = userDao.byUsername(username);
		if (f) {
			try {
				response.getWriter().print("该用户名已注册!");
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			try {
				response.getWriter().print("正确");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		
	}

	//注册
	private void doRegist(HttpServletRequest request,
			HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		String email = request.getParameter("email");
		String code = request.getParameter("code");
		String realcode = (String) request.getSession().getAttribute("code");
		
		
		int n = userDao.Regist(username, password, confirmpassword, email);
		
		if(n>0){		
			try {
				response.getWriter().print("<script>alert('注册成功，请登录');location='login.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else {
			if (username==null) {
				System.out.println(username);
				try {
					response.getWriter().print("<script>alert('请输入用户名！');location='regist.jsp'</script>");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
		}
		if (password!=confirmpassword) {
			try {
				response.getWriter().print("<script>alert('两次密码不同！');location='regist.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
		if (code!=realcode) {
			try {
				response.getWriter().print("<script>alert('验证码错误！');location='regist.jsp'</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		}
		
		
		
		
	}
	
	//登陆
	private void doGetUserByUsername(HttpServletRequest request,
			HttpServletResponse response) {
		
		String username = request.getParameter("username");
		
		String password = request.getParameter("password");
		
		MembersInfo user = userDao.getallusers(username);
		HttpSession session =request.getSession();
		session.setAttribute("user", user);
		
		boolean f = userDao.login(username, password);
		if (f) {
			try {
				try {
					request.getRequestDispatcher("main.jsp").forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else {
			
			try {
				response.getWriter().print("账户名和密码不匹配!请重新输入！");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*
			try {
				System.out.println("错误");
				response.sendRedirect("login.jsp");
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			*/
		}
		
	}
}
