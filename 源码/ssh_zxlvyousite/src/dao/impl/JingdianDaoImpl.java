package dao.impl;
import java.sql.SQLException;
import java.util.List;

import model.Jingdian;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.JingdianDao;

public class JingdianDaoImpl extends HibernateDaoSupport implements JingdianDao {

	

	public void deleteBean(Jingdian bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Jingdian bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Jingdian selectBean(String where) {
		List<Jingdian> list = this.getHibernateTemplate().find("from Jingdian "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Jingdian  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Jingdian> selectBeanList(final int start,final int limit,final String where) {
		return (List<Jingdian>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Jingdian> list = session.createQuery(" from Jingdian"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Jingdian bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
