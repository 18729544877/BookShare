package com.linksky.ssh.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.Admin;




public class AdminDao {
private HibernateTemplate hibernateTemplate ;

/**
	 * 添加管理员
	 * 
	 * @param admin
	 * @return
	 */

	public Admin insertAdmin(Admin admin) {
		Integer id = (Integer) hibernateTemplate.save(admin);
		admin.setAdminId(id);
		return admin;
	}

	

	/**
	 * 通过id查找admin信息
	 * 
	 * @param id
	 * @return
	 */
	public Admin selectAdminById(int id) {
		Admin admin = hibernateTemplate.get(Admin.class, id);
		return admin;
	}

	/**
	 * 查找指定位置的数据
	 * 
	 * @param beginIndex
	 *            查找的 开始的位置
	 * @param record
	 *            查找的数据数量
	 * @return @""
	 */
//	public List<Admin> selectAllAdminForPage(int beginIndex, int record) {
//
//		String hql = " from Admin ";
//		Session session = HibernateUtil.getSession();
//		List<Admin> list = session.createQuery(hql).setFirstResult(beginIndex).setMaxResults(record).list();
//		return list;
//	}

	/**
	 * 删除指定id的admin
	 * 
	 * @param id
	 */
	public void delectAdmin(int id) {
		Admin admin = hibernateTemplate.get(Admin.class,id);
		hibernateTemplate.delete(admin);
	}

	/**
	 * 返回指定账号和密码的admin的信息
	 * 
	 * @param account
	 * @param password
	 * @return @""
	 */
	public Admin selectAdminByAccountAndPassword(String account, String password) {

		String hql = " from Admin where adminAccount=? and adminPassword = ? ";
		System.out.println(hibernateTemplate);
		List list = hibernateTemplate.find(hql, new Object[] {account,password});
		Admin admin =null;
		if(null != list && list.size() == 1) {
			admin = (Admin) list.get(0);
		}
		return admin;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}



	public List<Admin> findAllAdmin() {
		String hql = " from Admin ";
		
		List<Admin> list = (List<Admin>) hibernateTemplate.find(hql);
		return list;
	}
	
	
}
