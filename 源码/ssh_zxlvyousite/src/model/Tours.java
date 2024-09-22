package model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//旅游表
@Entity
@Table(name="t_Tours")
public class Tours {
	

	@Id
	@GeneratedValue
	private int id;//主键
	
	private String category;//分类（自由行，跟团游，国内游，国外游）
	
    private String biaoti;//标题
	
    @Column(name="content", columnDefinition="TEXT")
	private String content;//内容详情
    
    @Column(name="xingcheng", columnDefinition="TEXT")
	private String xingcheng;//行程介绍 
    
    @Column(name="xuzhi", columnDefinition="TEXT")
	private String xuzhi;//预订须知
    
	private int price;//票价（元/人）
	
	private String imgpath;//图片
	
	private Date createtime;//添加时间

	private int tourslock;//删除状态  0表示未删除 1表示已删除
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBiaoti() {
		return biaoti;
	}

	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getXingcheng() {
		return xingcheng;
	}

	public void setXingcheng(String xingcheng) {
		this.xingcheng = xingcheng;
	}

	public String getXuzhi() {
		return xuzhi;
	}

	public void setXuzhi(String xuzhi) {
		this.xuzhi = xuzhi;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public int getTourslock() {
		return tourslock;
	}

	public void setTourslock(int tourslock) {
		this.tourslock = tourslock;
	}
	

	
}
