package dao.impl;
import java.sql.SQLException;
import java.util.List;

import model.Reserve;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.ReserveDao;

public class ReserveDaoImpl extends HibernateDaoSupport implements ReserveDao {

	

	public void deleteBean(Reserve bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Reserve bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Reserve selectBean(String where) {
		List<Reserve> list = this.getHibernateTemplate().find("from Reserve "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Reserve  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Reserve> selectBeanList(final int start,final int limit,final String where) {
		return (List<Reserve>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Reserve> list = session.createQuery(" from Reserve"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Reserve bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
