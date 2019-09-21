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
	 * 向数据库添加书籍
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
	 * 查找指定id的书籍
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
	 * 查找所有的图书
	 */
	public List<Book> findAllBook() {
		String hql = " from Book ";

		List<Book> list = (List<Book>) hibernateTemplate.find(hql);
		return list;
	}

	/**
	 * 通过图书类型来查找图书
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
	 * 通过图书的操作类型来查找图书
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
	 * 通过图书的操作和图书的拥有者来返回对应的图书
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
	 * 找到指定图书拥有者的所有的图书
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
	 * 修改图书信息
	 * 
	 * @param book
	 */
	public void updateBook(Book book) {
		hibernateTemplate.update(book);
	}


	/**
	 * 删除指定id的book
	 * 
	 * @param id
	 */
	public void deleteBook(Integer id) {
		Book book = hibernateTemplate.get(Book.class, id);
		hibernateTemplate.delete(book);
	}

}
