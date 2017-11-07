package entity;

import java.io.Serializable;
import java.util.Date;


//用户信息的javabean
public class Admin implements Serializable {
	private int id;//id
	private String username;//用户名字
	private String password;//用户密码
	private String age;//用户年龄
	private String birthday;//用户生日
	private String edu;//用户学历
	private String work;//用户的之前工作
	private String workto;//用户的期望职位
	private String workage;//用户的工作年限
	private String in;//用户的自我评价
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String object) {
		this.age = object;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getWorkto() {
		return workto;
	}
	public void setWorkto(String workto) {
		this.workto = workto;
	}
	public String getWorkage() {
		return workage;
	}
	public void setWorkage(String workage) {
		this.workage = workage;
	}
	public String getIn() {
		return in;
	}
	public void setIn(String in) {
		this.in = in;
	}

	
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", age=" + age + ", birthday="
				+ birthday + ", edu=" + edu + ", work=" + work + ", workto=" + workto + ", workage=" + workage + ", in="
				+ in + "]";
	}
	
	
	
	
	
	
}
