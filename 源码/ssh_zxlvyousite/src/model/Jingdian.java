package model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//景点
@Entity
@Table(name="t_Jingdian")
public class Jingdian {
	
	@Id
	@GeneratedValue
	private int id;//主键
	private String imgpath;//景点图片
	private String name;//景点名称
	private String address;//地址
	private int price;//票价（元/人）
	@Column(name="content", columnDefinition="TEXT")
	private String content;//景点描述
	private Date createtime;//添加时间
	private int jingdianlock;//删除状态  0表示未删除 1表示已删除
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public int getJingdianlock() {
		return jingdianlock;
	}

	public void setJingdianlock(int jingdianlock) {
		this.jingdianlock = jingdianlock;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	

	
}
