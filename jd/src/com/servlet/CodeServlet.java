package com.servlet;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CodeServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String string = "abcdefghijklmnopqrstuvwxyz";
		char[] ch= new char[4];
		Random random = new Random();
		for (int i = 0; i < 4; i++) {
			ch[i] = string.charAt(random.nextInt(26));
		}
		
		String code = new String(ch);
		
		//保存验证码
		request.getSession().setAttribute("code", code);
		
		//画板  宽 高  三原色
		BufferedImage bufferedImage = new BufferedImage(80,35,BufferedImage.TYPE_INT_RGB);
		
		
		//笔
		Graphics graphics = bufferedImage.getGraphics();
		
		//设置背景颜色
		graphics.setColor(Color.yellow);
		
		//填充颜色
		graphics.fillRect(0,0, 80, 35);
		
		//字体
		graphics.setFont(new Font("黑体",Font.BOLD,30));
		
		//显示的字体颜色
		graphics.setColor(Color.red);
		
		//四个元素    相隔的距离    top的高度
		graphics.drawString(code.charAt(0)+"", 10, 26);
		graphics.drawString(code.charAt(1)+"", 33, 28);
		graphics.drawString(code.charAt(2)+"", 47, 22);
		graphics.drawString(code.charAt(3)+"", 65, 24);
		
		//画干扰线   两点确定直线  第一个点的横纵坐标-第二个点的横纵坐标
		graphics.drawLine(random.nextInt(100), random.nextInt(30), random.nextInt(100), random.nextInt(30));
		graphics.drawLine(random.nextInt(100), random.nextInt(30), random.nextInt(100), random.nextInt(30));
		graphics.drawLine(random.nextInt(100), random.nextInt(30), random.nextInt(100), random.nextInt(30));
		graphics.drawLine(random.nextInt(100), random.nextInt(30), random.nextInt(100), random.nextInt(30));
		graphics.drawLine(random.nextInt(100), random.nextInt(30), random.nextInt(100), random.nextInt(30));
		
		//输出用流
		OutputStream os = response.getOutputStream();
		ImageIO.write(bufferedImage, "JPEG", os);
		os.close();
		
		
	}
}
