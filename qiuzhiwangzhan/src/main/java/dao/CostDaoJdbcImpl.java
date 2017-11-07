package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import entity.Admin;
import entity.Cost;
import entity.Work;
import util.DBUtil;
@Repository("costDao")
public class CostDaoJdbcImpl implements CostDao{
	@Resource(name="ds")
	private DataSource ds;
	public Cost findByWn(String Wn) {
		Cost cost = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			String sql = "select * from users_files1 where username=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, Wn);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				cost = new Cost();
				
			}
			
		} catch (SQLException e) {
			//记日志(保留现场)
			e.printStackTrace();
			/*
			 * 看异常能否恢复，如果不能恢复。(比如，数据库服务暂停，进发生了系统
			 * 异常)，提示用户稍后重试。如果能够恢复，则立即恢复
			 * */
			throw new RuntimeException(e);//用运行时异常，这样的方式好处是无需在
					//接口上声明。接口方法上不应直接显示具体的业务异常
			
		} finally{
			if(conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException(e);
				}
			}
		}
		return null;
	}
	//工作列表的findAll方法
	public List<Cost> findAll(){
		Connection conn = null;
		try{
			conn = DBUtil.getConnection();
			String sql = "select * from work_gaoyang1";
			Statement smt = conn.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			List<Cost> list = new ArrayList<Cost>();
			while(rs.next()){
				Cost c = new Cost();
				c.setWn(rs.getString("wn"));
				c.setGn(rs.getString("gn"));
				c.setZy(rs.getString("zy"));
				c.setGd(rs.getString("gd"));
				list.add(c);
				
			}
			return list;
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException("查询公司信息失败");
		}finally{
			DBUtil.close(conn);
		}
	}
	//简历列表的findAll方法
		public List<Admin> findAll1(){
			Connection conn = null;
			try{
				conn = DBUtil.getConnection();
				String sql = "select * from users_files1";
				Statement smt = conn.createStatement();
				ResultSet rs = smt.executeQuery(sql);
				List<Admin> list = new ArrayList<Admin>();
				while(rs.next()){
					Admin c = new Admin();
					c.setUsername(rs.getString("username"));
					c.setAge(rs.getString("age"));
					c.setEdu(rs.getString("edu"));
					c.setWorkto(rs.getString("workto"));
					list.add(c);
				}
				return list;
			}catch(SQLException e){
				e.printStackTrace();
				throw new RuntimeException("查询简历失败");
			}finally{
				DBUtil.close(conn);
			}
		}
	//工作列表根据公司名称模糊查找的方法
	public List<Cost> findAccount(String gn){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "SELECT * FROM work_gaoyang1 WHERE gn LIKE '%"+gn+"%'";
			Statement smt = conn.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			List<Cost> list = new ArrayList<Cost>();
			while(rs.next()){
				Cost c = new Cost();
				c.setId(rs.getInt("id"));
				c.setWn(rs.getString("wn"));
				c.setGn(rs.getString("gn"));
				c.setZy(rs.getString("zy"));
				c.setGd(rs.getString("gd"));
				list.add(c);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询公司信息失败");
		} finally{
			DBUtil.close(conn);
		}

	}
	//工作详情页的公司信息查找方法（根据公司名称查找）
	public Work findByGname(String id){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql ="SELECT * FROM work_gaoyang12 WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				Work work = new Work();
				work.setWork1(rs.getString("work1"));
				work.setWork2(rs.getString("work2"));
				work.setWork3(rs.getString("work3"));
				work.setWork4(rs.getString("work4"));
				work.setWork5(rs.getString("work5"));
				work.setWork6(rs.getString("work6"));
				work.setWork7(rs.getString("work7"));
				work.setWork8(rs.getString("work8"));
				work.setWork9(rs.getString("work9"));
				work.setWork10(rs.getString("work10"));
				work.setWork11(rs.getString("work11"));
				return work;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询公司信息失败");
		} finally{
			DBUtil.close(conn);
		}
		return null;
	}
	
	
}
	

