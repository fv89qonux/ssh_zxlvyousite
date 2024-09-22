package dao.impl;
import java.sql.SQLException;
import java.util.List;

import model.Tours;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.ToursDao;

public class ToursDaoImpl extends HibernateDaoSupport implements ToursDao {

	

	public void deleteBean(Tours bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Tours bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Tours selectBean(String where) {
		List<Tours> list = this.getHibernateTemplate().find("from Tours "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Tours  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Tours> selectBeanList(final int start,final int limit,final String where) {
		return (List<Tours>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Tours> list = session.createQuery(" from Tours"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Tours bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
