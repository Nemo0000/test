package entity;
/**
 * 企业登录及注册的账号密码公司名信息实体类
 * */
import java.io.Serializable;

public class Ent implements Serializable {
	
	private int id;//编号
	private String ent1;//企业的登录用户名
	private String ent2;//企业的密码
	private String ent3;//企业的名称
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEnt1() {
		return ent1;
	}
	public void setEnt1(String ent1) {
		this.ent1 = ent1;
	}
	public String getEnt2() {
		return ent2;
	}
	public void setEnt2(String ent2) {
		this.ent2 = ent2;
	}
	public String getEnt3() {
		return ent3;
	}
	public void setEnt3(String ent3) {
		this.ent3 = ent3;
	}
	@Override
	public String toString() {
		return "Ent [id=" + id + ", ent1=" + ent1 + ", ent2=" + ent2 + ", ent3=" + ent3 + "]";
	}
	
	
	
}
