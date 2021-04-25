package jdbc;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.FundEntity;
import entity.WareEntity;

public class WareService {
	public static Connection getConn(){
		String url = "JDBC:mysql://localhost:3306/efund?useUnicode=true&characterEncoding=UTF-8";
		
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url,"root","123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	//insert ware
	public static int insertWare(String uname,String fnum,BigDecimal wprice)
	{
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "INSERT INTO efund.warehouse (uname,fnum,wprice) VALUES (?,?,?)";
		
		try {
			int row = runner.update(conn,sql,uname,fnum,wprice);
						
			DbUtils.closeQuietly(conn);
			
			if(row>0) return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	// 更新用户仓库
	public static void updatePrice(String uname,String fnum, BigDecimal price) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "UPDATE efund.warehouse set wprice=? where uname=? && fnum=?";

		try {
			int row = runner.update(conn, sql, price, uname ,fnum);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//查找用户所持有的基金
	public static List<WareEntity> getUserWare(String uname)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM warehouse WHERE uname = ?";
		
		List<WareEntity> wares = new ArrayList<>();
		
		try {
			wares= runner.query(conn, sql,new BeanListHandler<WareEntity>(WareEntity.class),uname);
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return wares;
	}
	
	//查找仓库记录
	public static WareEntity findWareByUnameFnum(String uname,String fnum)
	{
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM warehouse WHERE uname = ? && fnum = ?";
		
		WareEntity ware = null;
		try {
			List<WareEntity> wares= runner.query(conn, sql,new BeanListHandler<WareEntity>(WareEntity.class),uname,fnum);
			
			DbUtils.closeQuietly(conn);

			if(wares.size()>0)
			{
				return wares.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return ware;
	}
	
	//删除用户仓库记录
//	DELETE FROM warehouse WHERE uname='cs' && fnum='519729'
	public static void deleteWare(String uname,String fnum) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "DELETE FROM warehouse WHERE uname=? && fnum=?";

		try {
			int row = runner.update(conn, sql, uname ,fnum);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
