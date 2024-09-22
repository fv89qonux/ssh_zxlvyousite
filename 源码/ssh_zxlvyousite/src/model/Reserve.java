package model;


import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//预定
@Entity
@Table(name="t_Reserve")
public class Reserve {
	

	@Id
	@GeneratedValue
	private int id;//主键
	
    @ManyToOne
	@JoinColumn(name="toursid")
	private Tours tours;//关联旅游
    
    @ManyToOne
	@JoinColumn(name="hotelid")
	private Hotel hotel;//关联度假酒店
    
    @ManyToOne
	@JoinColumn(name="jingdianid")
	private Jingdian jingdian;//关联景点
    
    
	@ManyToOne
	@JoinColumn(name="userid")
	private User user;//关联用户
	
	
	private int number;//预定人数/预定房间数量
	
	private int tianshu;//酒店预定天数
	
	private String times;//预定日期
	
	private int heji;//合计费用
	
	private String stauts;//预定状态（已预订）
	
	private Date createtime;//添加时间

	private int reservelock;//删除状态  0表示未删除 1表示已删除
	
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

	public int getTianshu() {
		return tianshu;
	}

	public void setTianshu(int tianshu) {
		this.tianshu = tianshu;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public int getHeji() {
		return heji;
	}

	public void setHeji(int heji) {
		this.heji = heji;
	}

	public String getStauts() {
		return stauts;
	}

	public void setStauts(String stauts) {
		this.stauts = stauts;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public int getReservelock() {
		return reservelock;
	}

	public void setReservelock(int reservelock) {
		this.reservelock = reservelock;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	

	
}
