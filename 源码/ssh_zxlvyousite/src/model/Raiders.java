package model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//旅游攻略
@Entity
@Table(name="t_Raiders")
public class Raiders {
	
	@Id
	@GeneratedValue
	private int id;//主键
	private String imgpath;//图片上传
	private String name;//标题
	@Column(name="content", columnDefinition="TEXT")
	private String content;//旅游攻略详情页描述
	private Date createtime;//添加时间
	private int raiderslock;//删除状态  0表示未删除 1表示已删除
	
	
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

	public int getRaiderslock() {
		return raiderslock;
	}

	public void setRaiderslock(int raiderslock) {
		this.raiderslock = raiderslock;
	}

	
	
}
