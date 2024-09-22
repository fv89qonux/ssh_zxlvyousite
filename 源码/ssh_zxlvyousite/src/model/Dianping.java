package model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//点评
@Entity
@Table(name="t_Dianping")
public class Dianping {
	
	@Id
	@GeneratedValue
	private int id;//主键
	
	@ManyToOne
	@JoinColumn(name="userid")
	private User user;//关联用户的id 外键
	
	@ManyToOne
	@JoinColumn(name="toursid")
	private Tours tours;//关联旅游
	    
	@ManyToOne
    @JoinColumn(name="hotelid")
	private Hotel hotel;//关联度假酒店
	    
	@ManyToOne
	@JoinColumn(name="jingdianid")
	private Jingdian jingdian;//关联景点
	    
	
	@Column(name="content", columnDefinition="TEXT")
	private String content;//点评内容
	  

	private Date createtime;//点评时间

	private int deletestatus;//是否删除状态 0表示未删除 1表示删除  
	
	
	
	
	public int getDeletestatus() {
		return deletestatus;
	}

	public void setDeletestatus(int deletestatus) {
		this.deletestatus = deletestatus;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Tours getTours() {
		return tours;
	}

	public void setTours(Tours tours) {
		this.tours = tours;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public Jingdian getJingdian() {
		return jingdian;
	}

	public void setJingdian(Jingdian jingdian) {
		this.jingdian = jingdian;
	}

	

	
}
