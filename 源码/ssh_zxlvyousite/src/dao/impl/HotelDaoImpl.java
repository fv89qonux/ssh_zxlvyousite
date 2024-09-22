package dao.impl;
import java.sql.SQLException;
import java.util.List;

import model.Hotel;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.HotelDao;

public class HotelDaoImpl extends HibernateDaoSupport implements HotelDao {

	

	public void deleteBean(Hotel bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Hotel bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Hotel selectBean(String where) {
		List<Hotel> list = this.getHibernateTemplate().find("from Hotel "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Hotel  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Hotel> selectBeanList(final int start,final int limit,final String where) {
		return (List<Hotel>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Hotel> list = session.createQuery(" from Hotel"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Hotel bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
