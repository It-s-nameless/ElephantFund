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
import entity.OrderEntity;
import entity.UserEntity;

public class OrderService {
	//获取连接
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
	
	//insert order
//	INSERT INTO efund.`order` (ofnum,oprice,orate,ofname,otime,otype,uname) VALUES ('518730',120,0.13,'������ǿ����','2002-12-12 11:12:23','����','test')
	public static int insertOrder(String ofnum,BigDecimal oprice,BigDecimal orate,String ofname,String otime,String otype,String uname)
	{
		Connection conn = getConn();
		QueryRunner runner = new QueryRunner();
		
		String sql = "INSERT INTO efund.order (ofnum,oprice,orate,ofname,otime,otype,uname) VALUES (?,?,?,?,?,?,?)";
		
		try {
			int row = runner.update(conn,sql,ofnum,oprice,orate,ofname,otime,otype,uname);
						
			DbUtils.closeQuietly(conn);
			
			if(row>0) return row;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	//findByOtime
	public static OrderEntity findOrderByOtime(String otime)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM efund.order WHERE otime = ?";
		
		OrderEntity order = null;
		
		try {
			List<OrderEntity> orders= runner.query(conn, sql,new BeanListHandler<OrderEntity>(OrderEntity.class),otime);
			
			DbUtils.closeQuietly(conn);

			if(orders.size()>0)
			{
				return orders.get(0);
			}
			else
			{
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return order;
	}

	//findByUname
	public static List<OrderEntity> getOrderByUname(String uname)
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM efund.order WHERE uname = ? and otype!='卖出'";
		
		List<OrderEntity> orders = null;
		
		try {
			orders= runner.query(conn, sql,new BeanListHandler<OrderEntity>(OrderEntity.class),uname);
			
			DbUtils.closeQuietly(conn);
			
			return orders;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return orders;
	}
	
	//获取所有order信息
	public static List<OrderEntity> geAlltOrders()
	{
		Connection conn = getConn();

		QueryRunner runner = new QueryRunner();
		
		String sql = "SELECT * FROM efund.order";
		
		List<OrderEntity> orders = new ArrayList<>();
		
		try {
			orders= runner.query(conn, sql,new BeanListHandler<OrderEntity>(OrderEntity.class));
			
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return orders;
	}

}
