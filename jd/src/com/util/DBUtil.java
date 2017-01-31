package com.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Vector;


public class DBUtil {
	// 创建连接
	public static Vector<Connection> connectionPool = new Vector<Connection>();

	// 添加连接
	static {

		InputStream is = DBUtil.class.getResourceAsStream("/db.properties");
		Properties p = new Properties();
		try {
			p.load(is);

			String username = p.getProperty("username");
			String password = p.getProperty("password");
			String url = p.getProperty("url");
			String driver = p.getProperty("driver");

			Class.forName(driver);
			for (int i = 0; i < 10; i++) {
				Connection connection = DriverManager.getConnection(url,
						username, password);
				connectionPool.add(connection);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 从连接池取连
	public static Connection getCon() {
		Connection connection = connectionPool.get(0);
		connectionPool.remove(0);
		return connection;
	}

	// 放回连接
	public static void releaseCon(Connection connection) {
		connectionPool.add(connection);
	}

	// 增删
	public static int zsg(String sql, Object... p) {
		Connection connection = getCon();
		int n = 0;
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			for (int i = 0; i < p.length; i++) {
				ps.setObject(i + 1, p[i]);
			}

			n = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			releaseCon(connection);
		}
		return n;
	}

	public static List query(Class c, String sql, Object... p) {
		List list = new ArrayList();
		ResultSet rs = null;
		Connection connection = getCon();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			for (int i = 0; i < p.length; i++) {
				ps.setObject(i + 1, p[i]);
			}
			rs = ps.executeQuery();
			// rs --> list 保证前提 属性名和字段名一致
			while (rs.next()) {
				Object object = c.newInstance();
				// 给属性赋值
				// 元数据
				ResultSetMetaData rsmd = rs.getMetaData();
				// 总列数
				int count = rsmd.getColumnCount();
				for (int i = 1; i <= count; i++) {
					// 得到字段名
					String fieldname = rsmd.getColumnLabel(i);
					// 根据字段名得属性
					Field field = c.getDeclaredField(fieldname);
					// 私有属性可以访问
					field.setAccessible(true);
					// 给属性赋值
					field.set(object, rs.getObject(fieldname));
				}
				list.add(object);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			releaseCon(connection);
		}

		return list;

	}

	// 聚集查询 select count(*) from goods
	public static int uniqueQuery(String sql, Object... p) {
		Connection connection = getCon();
		int n = 0;
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			n = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			releaseCon(connection);
		}
		return n;

	}

}
