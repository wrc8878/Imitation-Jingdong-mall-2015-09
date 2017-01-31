package com.dao;

import java.util.List;

import com.pojo.Images;
import com.pojo.Others;
import com.pojo.PayInfo;
import com.pojo.ReceiveInfo;
import com.util.DBUtil;

public class SettleDao {
	
	
	public List<PayInfo> getallpay(){
		String sql =" select payid,payway from payinfo";
		List<PayInfo> list = null;
		try {
			list = DBUtil.query(PayInfo.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		 
	}
	
	
	//新增收货人信息
	public int insertRec(int membersid,String recname,String recprovince,String reccity,String recarea,String recaddr,int recphone){
		String sql="insert into receiveinfo(membersid,recname,recprovince,reccity,recarea,recaddr,recphone) values(?,?,?,?,?,?,?)";
		int n = DBUtil.zsg(sql, membersid,recname,recprovince,reccity,recarea,recaddr,recphone);
		return n;
	}

	
	//获取所有收货人信息
	public List<ReceiveInfo> getallrecinfo(int membersid){
		
		String sql =" select recname,recprovince,reccity,recarea,recaddr,recphone from receiveinfo where membersid=?";
		List<ReceiveInfo> list = null;
		try {
			list = DBUtil.query(ReceiveInfo.class, sql,membersid);
			System.out.println("wolaiguole");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		 
	}
	
	
}
