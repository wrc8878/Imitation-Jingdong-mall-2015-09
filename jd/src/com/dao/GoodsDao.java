package com.dao;

import java.util.List;

import com.pojo.Images;
import com.util.DBUtil;

public class GoodsDao {

	// 查找全部
	public List<Images> getall(){
		String sql = "select goodsid,imagesid,images,introduce,goodsprice from images";
		List<Images> list = DBUtil.query(Images.class, sql);
		return list;
		
	}
	// 根据编号查找
	public Images findbyid(int id) {
		String sql = "select goodsid,imagesid,images,introduce,goodsprice,small1,small2,small3,small4,big1,big2,big3,big4,carpic,smallcar from images where imagesid = ? ";
		List<Images> list = null;
		try {
			list = DBUtil.query(Images.class, sql, id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (list.size() > 0) {
			return list.get(0);

		}

		return null;

	}
}
