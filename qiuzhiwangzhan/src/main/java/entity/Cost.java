package entity;

import java.io.Serializable;

/**
 * ��ѯҳ���ְλ��Ϣjavabean��
 * */

public class Cost implements Serializable {
	private Integer id;
	private String wn;//ְλ����
	private String gn;//��˾����
	private String zy;//ְλ��н
	private String gd;//�����ص�
	
	
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
