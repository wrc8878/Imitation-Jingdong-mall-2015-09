package com.dao;

import java.sql.SQLException;
import java.util.List;


import com.pojo.MembersInfo;
import com.util.DBUtil;

public class UserDao {
	
	//注册
	public int Regist(String username,String password,String confirmpassword,String email){
		String sql="insert into membersinfo(MembersName,MembersPassword,ConfirmPassword,Email) values(?,?,?,?)";
		int n = DBUtil.zsg(sql, username,password,confirmpassword,email);
		return n;
	}

	
	
	//根据用户名查询
	public MembersInfo getallusers(String username){
		String sql =" select membersid,membersname,memberspassword,confirmpassword,email from membersinfo where membersname=?";
		
		List<MembersInfo> list = null;
		try {
			list = DBUtil.query(MembersInfo.class, sql,username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if (list.size()>0) {
			return list.get(0);
		}
		return null;
		
	}
	//登陆
	public boolean login(String username,String password){
		String sql = "select membersname,memberspassword,confirmpassword,email from membersinfo where membersname = ? and memberspassword = ?";
		
		List<MembersInfo> list = null;
		try {
			list = DBUtil.query(MembersInfo.class, sql, username,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if (list.size()>0) {
			return true;
		}
		return false;
	}
	
	
	//ajax username
	public boolean byUsername(String username){
		String sql = "select membersname,memberspassword,confirmpassword,email from membersinfo where membersname = ? ";
		
		List<MembersInfo> list = null;
		try {
			list = DBUtil.query(MembersInfo.class, sql, username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if (list.size()>0) {
			return true;
		}
		return false;
	}
	
	
	
	
}
