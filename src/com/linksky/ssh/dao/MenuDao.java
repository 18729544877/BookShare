package com.linksky.ssh.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.Admin;
import com.linksky.ssh.entity.Menu;


public class MenuDao {
	private HibernateTemplate hibernateTemplate ;
	
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 插入菜单
	 * 
	 * @param menu
	 * @return
	 * @throws SQLException
	 */
	public Menu insertMenu(Menu menu) throws SQLException {
		Integer id = (Integer) hibernateTemplate.save(menu);
		menu.setMenuId(id);
		return menu;
	}

	/**
	 * 通过id查找菜单
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Menu SelectMenuById(int id) throws SQLException {

		Menu menu = hibernateTemplate.get(Menu.class, id);
		return menu;
	}

//	public List<Menu> selectAllMenuForPage(int beginIndex, int record) {
//
//		String hql = " from Menu ";
//		Session session = HibernateUtil.getSession();
//		List<Menu> list = session.createQuery(hql).setFirstResult(beginIndex).setMaxResults(record).list();
//		return list;
//	}

	/**
	 * 修改菜单
	 * 
	 * @param menu
	 * @return
	 * @throws SQLException
	 */
	public void updateMenu(Menu menu) throws SQLException {
		hibernateTemplate.update(menu);
	}

	public List<Menu> selectMenuByType(String type) throws SQLException {
		String hql = "  from Menu where menuType = ?  order by menuOrder asc ";
		List<Menu> list = (List<Menu>) hibernateTemplate.find(hql,type);
		return list;
	}

	public List<Menu> selectAllMenu() throws SQLException {
		String hql = "  from Menu ";
		
		List<Menu> list = (List<Menu>) hibernateTemplate.find(hql);
		return list;
	}

	public void removeMenu(int id) throws SQLException {
		Menu menu = hibernateTemplate.get(Menu.class, id);
		hibernateTemplate.delete(menu);
	}

	public Menu findMenuById(int id) throws SQLException {
		Menu menu =hibernateTemplate.get(Menu.class, id);
		return menu;
	}

	public List<Menu> selectMenuByTypeAndParentId(String type, String parentId) throws SQLException {

		String hql = "  from Menu where menuType = ? ";
		List<Menu> list = (List<Menu>) hibernateTemplate.find(hql, type);
		List<Menu> newList = new ArrayList<Menu>();
		int length = list.size();
		for (int i = 0; i < length; i++) {
			Menu menu = findMenuById(list.get(i).getMenuId());
			if (null == menu.getParentId()) {
				newList.add(menu);
			}
		}
		return newList;

	}

	public List<Menu> selectMenuByParentId(Integer parentId) {
		String hql = "  from Menu where parentId=? order by menuOrder asc ";

		List<Menu> list = (List<Menu>) hibernateTemplate.findByNamedQuery(hql,parentId);
		return list;
	}

}
