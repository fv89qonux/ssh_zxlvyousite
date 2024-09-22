package dao.impl;
import java.sql.SQLException;
import java.util.List;

import model.Raiders;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.RaidersDao;

public class RaidersDaoImpl extends HibernateDaoSupport implements RaidersDao {

	

	public void deleteBean(Raiders bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Raiders bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Raiders selectBean(String where) {
		List<Raiders> list = this.getHibernateTemplate().find("from Raiders "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Raiders  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Raiders> selectBeanList(final int start,final int limit,final String where) {
		return (List<Raiders>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Raiders> list = session.createQuery(" from Raiders"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Raiders bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
