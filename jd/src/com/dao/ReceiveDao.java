package com.dao;

import java.sql.SQLException;
import java.util.List;


import com.pojo.MembersInfo;
import com.util.DBUtil;

public class ReceiveDao {
	
	//新增收货人信息
	public int insertRec(int membersid,String recname,String recprovince,String reccity,String recarea,String recaddr,int recphone,int recgu,String recemail){
		String sql="insert into receiveinfo(membersid,recname,recprovince,reccity,recarea,recaddr,recphone,recgu,recemail) values(?,?,?,?,?,?,?,?,?)";
		int n = DBUtil.zsg(sql, membersid,recname,recprovince,reccity,recarea,recaddr,recphone,recgu,recemail);
		return n;
	}

	
	
	//根据用户名查询
	public MembersInfo getallusers(String username){
		String sql =" select membersname,memberspassword,confirmpassword,email from membersinfo where membersname=?";
		
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
	
	
}
