package com.dao;

import java.util.List;

import com.pojo.Images;
import com.pojo.Others;
import com.util.DBUtil;

public class OthersDao {
	public Others getallothers(){
		String sql =" select othersid,medicine from others";
		List<Others> list = null;
		try {
			list = DBUtil.query(Others.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null; 
		
	}
	
	public List<Others> getall(){
		String sql =" select othersid,medicine from others";
		List<Others> list = null;
		try {
			list = DBUtil.query(Others.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		 
		
		
	}
	
}
