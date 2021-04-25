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
import entity.UserEntity;

public class UserService {
//	获取链接
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
	public static UserEntity login(String uname,String upass)
	{
		
		try {
			
			Connection conn = getConn();
			
			QueryRunner runner = new QueryRunner();
			
			String sql = "SELECT * FROM user WHERE uname=? AND upass=? AND uflag='1'";
			
			List<UserEntity> users= runner.query(conn, sql,new BeanListHandler<UserEntity>(UserEntity.class),uname,upass);
			
			DbUtils.closeQuietly(conn);
	
			if(users.size()>0)
			{
				return users.get(0);
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
	
	//signin 
	public static int signUp(String uname,String upass,String usex,String birth,String phone)
	{
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "INSERT INTO user (uname,upass,usex,birth,phone) VALUES (?,?,?,?,?)";
		
		try {
			int row = runner.update(conn,sql,uname,upass,usex,birth,phone);
			
			DbUtils.closeQuietly(conn);
			
			if(row>0) return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	//findByUname
//	SELECT * FROM efund.`user` WHERE uname = 'psyduck'
	public static UserEntity findUserByUname(String uname)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM user WHERE uname = ?";
		
		UserEntity user = null;
		
		try {
			List<UserEntity> users= runner.query(conn, sql,new BeanListHandler<UserEntity>(UserEntity.class),uname);
			
			DbUtils.closeQuietly(conn);

			if(users.size()>0)
			{
				return users.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return user;
	}

	// 更新用户账户信息
//	UPDATE efund.`user` set money=20000 where uid=1
	public static void updateMoney(String uname, BigDecimal money) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "UPDATE efund.user set money=? where uname=?";

		try {
			int row = runner.update(conn, sql, money, uname);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	//更新用户账号状态
	public static void updateUflag(String uname,int uflag) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "UPDATE efund.user set uflag=? where uname=?";

		try {
			int row = runner.update(conn, sql, uflag, uname);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//获取用户列表
	public static List<UserEntity> getUserList()
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM user";
		
		List<UserEntity> users = new ArrayList<>();
		
		try {
			users= runner.query(conn, sql,new BeanListHandler<UserEntity>(UserEntity.class));
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return users;
	}
	
	//更新用户信息
	public static void updateUser(String uid,String utype) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "UPDATE user set utype=? where uid=?";

		try {
			int row = runner.update(conn, sql, utype,uid);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//重置用户密码
	public static void updateUpass(String uid) {
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();

		String sql = "UPDATE user set upass='123456' where uid=?";

		try {
			int row = runner.update(conn, sql,uid);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
