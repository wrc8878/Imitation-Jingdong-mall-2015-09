package com.dao;

import com.util.DBUtil;

public class CarDao {
	//加入购物车
	public int addcar (int membersid,int imagesid,int carcount,String carprice){
		String sql="insert into carinfo(membersid,imagesid,carcount,carprice) values(?,?,?,?)";
		int n = DBUtil.zsg(sql, membersid,imagesid,carcount,carprice);
		return n;
	}
}
