package com.linksky.ssh.dao;


import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.Vip;


public class VipDao {
	private HibernateTemplate hibernateTemplate ;
	
	/**
	 * 插入vip数据到数据库斌返回最后添加的会员的标识
	 * @param vip
	 * @return
	 * @throws SQLException
	 */
	
	
public Vip insertVip(Vip vip) throws SQLException {
	Integer id = (Integer) hibernateTemplate.save(vip);
	vip.setVipId(id);
	return vip;
}

public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

/**
 * 通过id来查找会员的信息
 * @throws SQLException 
 * 
 */
public Vip findVipById(int id) throws SQLException {
	
	Vip vip = (Vip)hibernateTemplate.get(Vip.class, id);
	return vip;
}

/**
 * 返回所有的vip的信息
 * @return
 * @throws SQLException 
 * @throws ParseException 
 */
public List<Vip> findAllVip()  {
	String hql =" from Vip ";
    List<Vip> list = (List<Vip>) hibernateTemplate.find(hql);
	return list;
}


public Vip findByAccountAndPassword(String vipAccount, String password) throws SQLException {
	String hql =" from Vip where vipAccount=? and vipPassword=? ";
	
	
    List<Vip> list = (List<Vip>) hibernateTemplate.find(hql, new Object[] {vipAccount,password});
	if(null != list && list.size() == 1) {
		Vip vip =list.get(0);
		return vip;
	}else {
		return null;
	}
}

public List<Vip> findAllVipByType(String type) throws SQLException, ParseException {
	String hql =" from Vip where vipType=? ";
    List<Vip> list = (List<Vip>) hibernateTemplate.find(hql, type);
	return list;
}

public List<Vip> findAllVipByLevel(String level) throws SQLException, ParseException {
	String hql =" from Vip where vipLevel=? ";
    List<Vip> list = (List<Vip>) hibernateTemplate.find(hql, level);
	return list;
}

//public List<Vip> selectAllVipForPage(int beginIndex, int record) {
//
//	String hql = " from Vip ";
//	Session session = HibernateUtil.getSession();
//	List<Vip> list = session.createQuery(hql).setFirstResult(beginIndex).setMaxResults(record).list();
//	return list;
//}

public void update(Vip vip) {
	hibernateTemplate.update(vip);
	}
	
public void delete(Integer id) throws SQLException {
	Vip vip = hibernateTemplate.get(Vip.class, id);
	hibernateTemplate.delete(vip);
}
}
