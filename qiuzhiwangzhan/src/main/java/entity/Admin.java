package entity;

import java.io.Serializable;
import java.util.Date;


//�û���Ϣ��javabean
public class Admin implements Serializable {
	private int id;//id
	private String username;//�û�����
	private String password;//�û�����
	private String age;//�û�����
	private String birthday;//�û�����
	private String edu;//�û�ѧ��
	private String work;//�û���֮ǰ����
	private String workto;//�û�������ְλ
	private String workage;//�û��Ĺ�������
	private String in;//�û�����������
	
	
	
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
