package entity;

import java.io.Serializable;

public class Work implements Serializable {
	
	private int id;//编号
	private String work1;//公司名称
	private String work2;//职位名称
	private String work3;//月薪
	private String work4;//招聘人数
	private String work5;//学历要求
	private String work6;//工作经验
	private String work7;//年龄
	private String work8;//工作地点
	private String work9;//联系电话
	private String work10;//联系人
	private String work11;//公司介绍
	
	
	public String toString() {
		return "Work [id=" + id + ", work1=" + work1 + ", work2=" + work2 + ", work3=" + work3 + ", work4=" + work4
				+ ", work5=" + work5 + ", work6=" + work6 + ", work7=" + work7 + ", work8=" + work8 + ", work9=" + work9
				+ ", work10=" + work10 + ", work11=" + work11 + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWork1() {
		return work1;
	}
	public void setWork1(String work1) {
		this.work1 = work1;
	}
	public String getWork2() {
		return work2;
	}
	public void setWork2(String work2) {
		this.work2 = work2;
	}
	public String getWork3() {
		return work3;
	}
	public void setWork3(String work3) {
		this.work3 = work3;
	}
	public String getWork4() {
		return work4;
	}
	public void setWork4(String work4) {
		this.work4 = work4;
	}
	public String getWork5() {
		return work5;
	}
	public void setWork5(String work5) {
		this.work5 = work5;
	}
	public String getWork6() {
		return work6;
	}
	public void setWork6(String work6) {
		this.work6 = work6;
	}
	public String getWork7() {
		return work7;
	}
	public void setWork7(String work7) {
		this.work7 = work7;
	}
	public String getWork8() {
		return work8;
	}
	public void setWork8(String work8) {
		this.work8 = work8;
	}
	public String getWork9() {
		return work9;
	}
	public void setWork9(String work9) {
		this.work9 = work9;
	}
	public String getWork10() {
		return work10;
	}
	public void setWork10(String work10) {
		this.work10 = work10;
	}
	public String getWork11() {
		return work11;
	}
	public void setWork11(String work11) {
		this.work11 = work11;
	}
	
	
	
}
