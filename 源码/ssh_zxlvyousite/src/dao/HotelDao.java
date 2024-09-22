package dao;
import java.util.List;

import model.Hotel;

public interface HotelDao {

	
	//插入新纪录
	public void insertBean(Hotel bean);
	
	//根据用户id删除纪录
	public void deleteBean(Hotel bean);
	
	//根据用户id更新纪录
	public void updateBean(Hotel bean);

	//获取信息列表,带查询功能，start 表示当前页，limit表示每页显示的条数 start=1,lmit=10
	public List<Hotel> selectBeanList(final int start,final int limit,final String where);
	
	
	//查询记录的总的条数
	public long selectBeanCount(final String where);
	
	//查询用户信息
	public Hotel selectBean(String where);
	

}
