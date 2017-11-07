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
			//����־(�����ֳ�)
			e.printStackTrace();
			/*
			 * ���쳣�ܷ�ָ���������ָܻ���(���磬���ݿ������ͣ����������ϵͳ
			 * �쳣)����ʾ�û��Ժ����ԡ�����ܹ��ָ����������ָ�
			 * */
			throw new RuntimeException(e);//������ʱ�쳣�������ķ�ʽ�ô���������
					//�ӿ����������ӿڷ����ϲ�Ӧֱ����ʾ�����ҵ���쳣
			
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
	//�����б��findAll����
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
			throw new RuntimeException("��ѯ��˾��Ϣʧ��");
		}finally{
			DBUtil.close(conn);
		}
	}
	//�����б��findAll����
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
				throw new RuntimeException("��ѯ����ʧ��");
			}finally{
				DBUtil.close(conn);
			}
		}
	//�����б���ݹ�˾����ģ�����ҵķ���
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
			throw new RuntimeException("��ѯ��˾��Ϣʧ��");
		} finally{
			DBUtil.close(conn);
		}

	}
	//��������ҳ�Ĺ�˾��Ϣ���ҷ��������ݹ�˾���Ʋ��ң�
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
			throw new RuntimeException("��ѯ��˾��Ϣʧ��");
		} finally{
			DBUtil.close(conn);
		}
		return null;
	}
	
	
}
	

