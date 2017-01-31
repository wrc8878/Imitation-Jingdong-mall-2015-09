package com.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.pojo.GoodsInfo;
import com.pojo.GoodsType;
import com.util.DBUtil;

public class GoodsTypeDao {
	
	public List<GoodsType> getallgoodstype(){
		String sql =" select goodstypeid,goodstype from goodstype";
		List<GoodsType> list = null;
		try {
			list = DBUtil.query(GoodsType.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return list;
	}
	
	
	public GoodsType findGoodstypeById(int id){
		String sql = "select goodstypeid,goodstype from goodstype where goodstypeid=?";
		List<GoodsType> list = null;
		try {
			list = DBUtil.query(GoodsType.class, sql,id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if (list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	
	
	public GoodsInfo getallgoodsinfo(){
		String sql =" select goodsid,goodstypeid,goodsname,goodsprice,goodssize from goodsinfo";
		List<GoodsInfo> list = null;
		try {
			list = DBUtil.query(GoodsInfo.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null; 
		
	}
	
	public List<GoodsInfo> getallgoods(){
		String sql =" select goodsid,goodstypeid,goodsname,goodsprice,goodssize from goodsinfo";
		List<GoodsInfo> list = null;
		try {
			list = DBUtil.query(GoodsInfo.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return list;
	}
	
	
	public List<GoodsInfo> findAllGoods(int id){
		String sql = "select goodstypeid,goodsname,goodsprice from goodsinfo where goodstypeid=?";
		List<GoodsInfo> list = null;
		//GoodsInfo goods = new GoodsInfo();
		try {
			 list = DBUtil.query(GoodsInfo.class, sql, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Map map = new HashMap();
			
		for (GoodsInfo goodsInfo : list) {
			System.out.println(goodsInfo.getGoodsname());
			
			map.put("list", list);
			
			//System.out.println();
			//map.get(list);
			//System.out.println(list.get(0));
			
		}
		return null;		
	}
	

	

	
	
	
	
}
