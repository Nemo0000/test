package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Admin;
import entity.Ent;
import util.DBUtil;
/**
 * 查询用户账号密码及详细信息的dao类
 * */


public class AdminDaoJdbcImpl implements Serializable {
	public Admin findByCode(String code){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from users_files1 where username=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, code);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				Admin a = new Admin();
				a.setId(rs.getInt("id"));
				a.setUsername(rs.getString("username"));
				a.setPassword(rs.getString("password"));
				a.setAge(rs.getString("age"));
				a.setBirthday(rs.getString("birthday"));
				a.setEdu(rs.getString("edu"));
				a.setWork(rs.getString("work"));
				a.setWorkto(rs.getString("workto"));
				a.setWorkage(rs.getString("workage"));
				a.setIn(rs.getString("int"));
				return a;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询管理员失败",e);
		} finally{
			DBUtil.close(conn);
		}
		return null;
	}
	//首页的注册。仅增加用户名及密码
	public Admin add1(Admin a){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "INSERT INTO users_files1 VALUES(users_seq_files.nextval,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, a.getUsername());
			ps.setObject(2, a.getPassword());
			ps.setObject(3, null);
			ps.setObject(4, null);
			ps.setObject(5, null);
			ps.setObject(6, null);
			ps.setObject(7, null);
			ps.setObject(8, null);
			ps.setObject(9, null);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("增加用户账号密码失败",e);
		} finally{
			DBUtil.close(conn);
		}		
		return null;
	}
	
	//注册的增加个人用户详细信息。（此方法还需修改）
	public Admin add2(Admin admin,String u1){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "UPDATE users_files1 SET age=?,birthday=?,edu=?,work=?,"
					+ "workto=?,workage=?,int=?  WHERE username =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, admin.getAge());
			ps.setObject(2, admin.getBirthday());
			ps.setObject(3, admin.getEdu());
			ps.setObject(4, admin.getWork());
			ps.setObject(5, admin.getWorkto());
			ps.setObject(6, admin.getWorkage());
			ps.setObject(7, admin.getIn());
			ps.setObject(8, u1);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("增加用户信息失败",e);
		} finally{
			DBUtil.close(conn);
		}
		return null;
	}
	
	//企业用户的账号密码查询dao方法
	public Ent findByEname(String code){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from work_gaoyang13 where ent1=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, code);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				Ent ent = new Ent();
				ent.setEnt1(rs.getString("ent1"));
				ent.setEnt2(rs.getString("ent2"));
				ent.setEnt3(rs.getString("ent3"));
				return ent;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询管理员失败",e);
		} finally{
			DBUtil.close(conn);
		}
		return null;
	}
	
	//企业用户的注册功能
	public Ent add3(Ent e){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "INSERT INTO work_gaoyang1 VALUES(work_seq_gaoyang.nextval,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, e.getEnt1());
			ps.setObject(2, e.getEnt2());
			ps.setObject(3, e.getEnt3());
			ps.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			throw new RuntimeException("增加用户账号密码失败",e1);
		} finally{
			DBUtil.close(conn);
		}		
		return null;
	}
	//个人用户的修改密码功能
	public Admin xiu(String pwd,String name){
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "UPDATE users_files1 SET password=?  WHERE username =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setObject(1, pwd);
			ps.setObject(2, name);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("修改密码失败",e);
		} finally{
			DBUtil.close(conn);
		}		
		return null;
	}
	//企业用户的修改密码功能
		public Admin xiu2(String pwd,String name){
			Connection conn = null;
			try {
				conn = DBUtil.getConnection();
				String sql = "UPDATE work_gaoyang13 SET ent2=?  WHERE ent1=?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setObject(1, pwd);
				ps.setObject(2, name);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("修改密码失败",e);
			} finally{
				DBUtil.close(conn);
			}		
			return null;
		}
	public static void main(String[] args) {
		AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
		Admin a = dao.findByCode("马尚颖");
		System.out.println(a.getEdu());
		System.out.println(a.getPassword());
		
	}
}
