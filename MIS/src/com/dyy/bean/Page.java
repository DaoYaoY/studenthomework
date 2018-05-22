package com.dyy.bean;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import com.dyy.conser.*;


/**
 * @param page 页数
 * @author 道YY
 *
 */
public class Page {
	
	public List<Goods>find(int page) throws ClassNotFoundException, SQLException{
		List<Goods> list = new ArrayList<Goods>();
		Dao dao  = new Dao();
		Connection conn = dao.getCon();
		
		String sql = "select * from goods order by id desc limit ?,?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, (page-1)*Goods.page_size);
			ps.setInt(2, Goods.page_size);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Goods good = new Goods();
				good.setid(rs.getInt("id"));
				good.setimgpath(rs.getString("imgpath"));
				good.setname(rs.getString("name"));
				good.setprice(rs.getInt("price"));
				good.setdescribe(rs.getString("describe"));
				//System.out.println(good.getdescribe());
				list.add(good);
				
			}
			rs.close ();
			ps.close();
			conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}




/**查询总记录数
   返回总记录数
 * @throws SQLException 
 * @throws ClassNotFoundException 
**/

public int findcount() throws ClassNotFoundException, SQLException {
	int count = 0;
	Connection conn = Dao.getCon();
	String sql = "select count(*) from goods";
	try {
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.next()) {
			count = rs.getInt(1);
		}
		rs.close();
		stmt.close();
		conn.close();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	
	return count;
}
}