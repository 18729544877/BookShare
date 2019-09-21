package com.linksky.ssh.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.Book;
import com.linksky.ssh.entity.Vip;

public class BookDao {

	private HibernateTemplate hibernateTemplate;

	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * �����ݿ�����鼮
	 * 
	 * @param book2
	 * @return
	 * @throws SQLException
	 */
	public Book insertBook(Book book) {
		Integer id = (Integer) hibernateTemplate.save(book);
		book.setBookId(id);
		return book;
	}

	/**
	 * ����ָ��id���鼮
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Book findBookById(int id){

		Book book = hibernateTemplate.get(Book.class, id);
		return book;
	}

	/**
	 * �������е�ͼ��
	 */
	public List<Book> findAllBook() {
		String hql = " from Book ";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql);
		return list;
	}

	/**
	 * ͨ��ͼ������������ͼ��
	 * 
	 * @param type
	 * @return
	 * @throws SQLException
	 */
	public List<Book> findBookByType(String type)  {
		String hql = " from Book where bookType = ? ";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql, type);
		return list;
	}

	 public List<Book> findAllBookForPage(int beginIndex, int record) {
	
	 String hql = " from Book limit ?,?";
	List<Book> list = (List<Book>) hibernateTemplate.find(hql, new Object[] {beginIndex,record});
	 return list;
	 }

	/**
	 * ͨ��ͼ��Ĳ�������������ͼ��
	 * 
	 * @param string
	 * @return
	 * @throws SQLException
	 */
	public List<Book> findBookByOperate(String operate) {
		String hql = " from Book where bookOperate = ? ";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql, operate);
		return list;
	}

	/**
	 * ͨ��ͼ��Ĳ�����ͼ���ӵ���������ض�Ӧ��ͼ��
	 * 
	 * @param vip
	 * @param string
	 * @return
	 * @throws SQLException
	 */
	public List<Book> findAllBookByOwnerAndOperate(Vip vip, String operate)  {
		String hql = " from Book where bookOwner=? and bookOperate=?";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql, new Object[] { vip, operate });
		return list;
	}

	/**
	 * �ҵ�ָ��ͼ��ӵ���ߵ����е�ͼ��
	 * 
	 * @param vipId
	 * @return
	 * @throws SQLException
	 */
	public List<Book> findAllBookByOwner(Vip vip) {
		String hql = " from Book where bookOwner = ? ";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql, vip);
		return list;
	}


	/**
	 * �޸�ͼ����Ϣ
	 * 
	 * @param book
	 */
	public void updateBook(Book book) {
		hibernateTemplate.update(book);
	}


	/**
	 * ɾ��ָ��id��book
	 * 
	 * @param id
	 */
	public void deleteBook(Integer id) {
		Book book = hibernateTemplate.get(Book.class, id);
		hibernateTemplate.delete(book);
	}

}
