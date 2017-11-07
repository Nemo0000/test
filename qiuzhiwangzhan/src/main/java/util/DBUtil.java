package util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;

public class DBUtil {
	
	private static BasicDataSource ds; 
	
	static{
		Properties p = new Properties();
		try {
			p.load(DBUtil.class.getClassLoader().
					getResourceAsStream("db.properties"));
			String driver = p.getProperty("driver");
			String url = p.getProperty("url");
			String user = p.getProperty("user");
			String pwd = p.getProperty("pwd");
			String initsize = p.getProperty("initsize");
			String maxsize = p.getProperty("maxsize");
			//�������ӳ�
			ds = new BasicDataSource();
			//���ò���
			ds.setDriverClassName(driver);
			ds.setUrl(url);
			ds.setUsername(user);
			ds.setPassword(pwd);
			ds.setInitialSize(Integer.parseInt(initsize));
			ds.setMaxActive(Integer.parseInt(maxsize));
			
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("����db.propertiesʧ�ܣ�",e);
		}
		
	}
	
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
	}
	/**
	 * Ŀǰ�����������ӳش����ģ����ӵ�ʵ�����������ӳ��ṩ�ģ�
	 * ���ӳؽ����Ӷ����close������Ϊ�黹���ӵ��߼���
	 */
	public static void close(Connection conn){
		try {
			if(conn!=null){
			conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�ر�����ʧ�ܣ�",e);
		}
	}
	public static void rollback(Connection conn){
		try {
			if(conn!=null){
			conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�ع�ʧ�ܣ�",e);
		}
		
	}
	public static void main(String[] args) throws SQLException {
		Connection conn = DBUtil.getConnection();
		System.out.println(conn);
		DBUtil.close(conn);
		}
		
	
}
	
