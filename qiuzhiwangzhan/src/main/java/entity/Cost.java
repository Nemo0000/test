package entity;

import java.io.Serializable;

/**
 * 查询页面的职位信息javabean类
 * */

public class Cost implements Serializable {
	private Integer id;
	private String wn;//职位名称
	private String gn;//公司名称
	private String zy;//职位月薪
	private String gd;//工作地点
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getWn() {
		return wn;
	}
	public void setWn(String wn) {
		this.wn = wn;
	}
	public String getGn() {
		return gn;
	}
	public void setGn(String gn) {
		this.gn = gn;
	}
	public String getZy() {
		return zy;
	}
	public void setZy(String zy) {
		this.zy = zy;
	}
	public String getGd() {
		return gd;
	}
	public void setGd(String gd) {
		this.gd = gd;
	}
	
	
	
}
