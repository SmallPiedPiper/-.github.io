package cn.zyd.utils;

import java.util.List;
//���ڷ�ҳ�������д
public class Page <T>{

	//��ҳ�������ʵ��
	//�ܹ��ж���ҳ
	private int total;
	//ÿһҳ�ж���������
	private int size;
	//��ǰҳ�����ǵڼ�ҳ
	private int page;
	//��ǰҳ����Ҫ�洢��ÿһ�еľ�������
	private List<T> rows;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	@Override
	public String toString() {
		return "Page [total=" + total + ", size=" + size + ", page=" + page
				+ ", rows=" + rows + "]";
	} 
	
	
}
