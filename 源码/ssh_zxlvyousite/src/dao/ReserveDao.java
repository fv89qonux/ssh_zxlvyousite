package dao;
import java.util.List;

import model.Reserve;

public interface ReserveDao {

	
	//插入新纪录
	public void insertBean(Reserve bean);
	
	//根据用户id删除纪录
	public void deleteBean(Reserve bean);
	
	//根据用户id更新纪录
	public void updateBean(Reserve bean);

	//获取信息列表,带查询功能，start 表示当前页，limit表示每页显示的条数 start=1,lmit=10
	public List<Reserve> selectBeanList(final int start,final int limit,final String where);
	
	
	//查询记录的总的条数
	public long selectBeanCount(final String where);
	
	//查询用户信息
	public Reserve selectBean(String where);
	

}
