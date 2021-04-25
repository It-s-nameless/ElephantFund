package jdbc;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import entity.AdminEntity;

public class AdminService {
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
	
	//login
	public static AdminEntity login(String aname,String apass)
	{
		
		try {
			
			Connection conn = getConn();
			
			QueryRunner runner = new QueryRunner();
			
			String sql = "SELECT * FROM admin WHERE aname=? AND apass=?";
			
			List<AdminEntity> admins= runner.query(conn, sql,new BeanListHandler<AdminEntity>(AdminEntity.class),aname,apass);
			
			DbUtils.closeQuietly(conn);
	
			if(admins.size()>0)
			{
				return admins.get(0);
			}
			else
			{
				return null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
