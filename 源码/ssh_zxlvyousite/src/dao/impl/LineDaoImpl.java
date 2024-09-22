package dao.impl;
import java.sql.SQLException;
import java.util.List;
import model.Line;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import dao.LineDao;

public class LineDaoImpl extends HibernateDaoSupport implements LineDao {

	

	public void deleteBean(Line bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Line bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Line selectBean(String where) {
		List<Line> list = this.getHibernateTemplate().find("from Line "+where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public long selectBeanCount(final String where) {
		long count = (Long)this.getHibernateTemplate().find(" select count(*) from Line  "+where).get(0);
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Line> selectBeanList(final int start,final int limit,final String where) {
		return (List<Line>)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(final Session session) throws HibernateException, SQLException {
				List<Line> list = session.createQuery(" from Line"+where).setFirstResult(start).setMaxResults(limit).list();
				return list;
			}
		});
		
	}

	public void updateBean(Line bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
	
	
	
	
	
}
