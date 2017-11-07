package entity;

import java.io.Serializable;

/**封装具体分页信息*/
public class PageObject implements Serializable{
	private static final long serialVersionUID = -8406642229562905972L;
	
	/**当前�?*/
	private int pageCurrent=1;
	/**每页�?多能显示的记录数*/
	private int pageSize=10;
	/**总记录数*/
	private int rowCount;
	/**总页�?*/
	private int pageCount;
	/**上一页的�?后那�?条记录�??
	 * 对应:limit startIndex,pageSize
	 * */
	private int startIndex;
	
	
	public int getPageCurrent() {
		return pageCurrent;
	}
	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	
	
	
	
}
