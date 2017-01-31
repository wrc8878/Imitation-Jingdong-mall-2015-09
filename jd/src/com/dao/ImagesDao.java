package com.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pojo.GoodsInfo;
import com.pojo.Images;
import com.util.DBUtil;

public class ImagesDao {
	
	public List<Images> getallimages(){
		String sql =" select goodsid,imagesid,images,introduce,goodsprice from images";
		List<Images> list = null;
		try {
			list = DBUtil.query(Images.class, sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return list;
	}
	
	// 查找全部 保存的信息不一样 当前显示的是第几页 每页多少条 查出来的结果
	public Map fenye(int page, int size) {

		Map map = new HashMap();

		// 第一 查出总共有多少条记录 --> 为了求总页数
		String sql = "select count(*) from images";
		// 总条数
		int count = DBUtil.uniqueQuery(sql, page,size);

		// 求总页数
		int sum = count % size == 0 ? count / size : count / size + 1;

		
		//越界判断
		if (page > sum) {
			page = sum;
		}

		if (page < 1) {
			page = 1;
		}

		// 查数据
		sql = "select goodsid,imagesid,images,introduce,goodsprice from images limit ? , ?";
		// 查出来的就是分页之后的结果
		List<Images> list = null;
		try {
			list = DBUtil.query(Images.class, sql, (page - 1) * size, size);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		map.put("list", list);
		map.put("sum", sum);
		map.put("count", count);
		map.put("page", page);
		map.put("size", size);

		return map;

	}
	
	// 查找全部 保存的信息不一样 当前显示的是第几页 每页多少条 查出来的结果
	public Map fenye1(int id,int page, int size) {

		Map map = new HashMap();

		// 第一 查出总共有多少条记录 --> 为了求总页数
		String sql = "select count(*) from images where goodsid=?";
		
		// 总条数
		int count = DBUtil.uniqueQuery(sql,id, page,size);

		// 求总页数
		int sum = count % size == 0 ? count / size : count / size + 1;

		
		//越界判断
		if (page > sum) {
			page = sum;
		}

		if (page < 1) {
			page = 1;
		}

		// 查数据
		sql = "select goodsid,imagesid,images,introduce,goodsprice from images where goodsid=? limit ? , ?";
		// 查出来的就是分页之后的结果
		List<Images> list = null;
		try {
			list = DBUtil.query(Images.class, sql, id,(page - 1) * size, size);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		map.put("list", list);
		map.put("sum", sum);
		map.put("count", count);
		map.put("page", page);
		map.put("size", size);

		return map;

	}


	public Map price1(int page, int size,int begin,int end) {
		Map map = new HashMap();
		// 查数据
		 String sql = "select goodsid,imagesid,images,introduce,goodsprice from images where goodsprice between ? and ?";
		// 查出来的就是分页之后的结果
		List<Images> list = null;
		try {
			list = DBUtil.query(Images.class, sql,begin,end);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int count = list.size();
		System.out.println("总数"+count);
		// 求总页数
		int sum = count % size == 0 ? count / size : count / size + 1;
		System.out.println("页数"+sum);
		
		//越界判断
		if (page > sum) {
			page = sum;
		}

		if (page < 1) {
			page = 1;
		}
		map.put("list", list);
		map.put("sum", sum);
		map.put("count", count);
		map.put("page", page);
		map.put("size", size);
		return map;

	}
	public Map price2(int page, int size,int begin,int end) {
		System.out.println(123456);
			Map map = new HashMap();

			// 第一 查出总共有多少条记录 --> 为了求总页数
			String sql = "select count(*) from images where goodsprice between ? and ?";
			// 总条数
			int count = DBUtil.uniqueQuery(sql, page,size,begin,end);
			System.out.println(count);
			// 求总页数
			int sum = count % size == 0 ? count / size : count / size + 1;

			
			//越界判断
			if (page > sum) {
				page = sum;
			}

			if (page < 1) {
				page = 1;
			}

			// 查数据
			sql = "select goodsid,imagesid,images,introduce,goodsprice from images where goodsprice between ? and ?";
			// 查出来的就是分页之后的结果
			List<Images> list = null;
			try {
				list = DBUtil.query(Images.class, sql, (page - 1) * size, size,begin,end);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			map.put("list", list);
			map.put("sum", sum);
			map.put("count", count);
			map.put("page", page);
			map.put("size", size);

			return map;

	}
}
