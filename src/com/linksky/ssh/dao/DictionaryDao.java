package com.linksky.ssh.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.Dictionary;


public class DictionaryDao {
	private HibernateTemplate hibernateTemplate ;
	/**
	 * 根据传入的数据字典添加如数据库表格里面
	 * @param dic
	 * @return
	 * @throws SQLException 
	 */
	
	public Dictionary insertDictionary(Dictionary dictionary) throws SQLException {
		Integer id = (Integer) hibernateTemplate.save(dictionary);
		dictionary.setDictionaryId(id);
		return dictionary;
		
	}
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public List<Dictionary> findDictionaryByTypeCode(String typeCode) throws SQLException {
		String hql =" from Dictionary where dictionaryTypeCode=?";
		
		List<Dictionary> list = (List<Dictionary>) hibernateTemplate.find(hql,typeCode);
		return list;
	}
	
	public Dictionary findDictionaryById(int id) throws SQLException {
		
		Dictionary dictionary = hibernateTemplate.get(Dictionary.class, id);
	    return dictionary;	
	}



			public List<Dictionary> findAllDictionay() throws SQLException{
				String hql =" from Dictionary ";
				List<Dictionary> list = (List<Dictionary>) hibernateTemplate.find(hql);
				return list;
			}

	public void deleteDictionaryById(int id) throws SQLException {
		Dictionary dictionary = hibernateTemplate.get(Dictionary.class, id);
		hibernateTemplate.delete(dictionary);
		
	}



	public void updateDictionary(Dictionary dictionary) throws SQLException {
		hibernateTemplate.update(dictionary);
	}
	
//	public List<Dictionary> selectAllDictionaryForPage(int beginIndex, int record) {
//
//		String hql = " from Dictionary ";
//		
//		List<Dictionary> list = session.createQuery(hql).setFirstResult(beginIndex).setMaxResults(record).list();
//		return list;
//	}
	
}
