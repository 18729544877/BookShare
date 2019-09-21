package com.linksky.ssh.service;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.dao.BookDao;
import com.linksky.ssh.entity.Book;
import com.linksky.ssh.entity.Vip;

public class BookService {

	private BookDao bookDao;

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	public List<Book> findAllBook() {
		return bookDao.findAllBook();
		
	}

	public void updateBook(Book book) {
		bookDao.updateBook(book);
		
	}

	public Book findById(Integer id)  {
      return 	bookDao.findBookById(id);

	}

	public List<Book> findBookByOperate(String string)  {
		return bookDao.findBookByOperate(string);
	}

	public List<Book> findAllBookByOwnerAndOperate(Vip vip, String string)  {
		return bookDao.findAllBookByOwnerAndOperate(vip, string);
	}

	public List<Book> findAllBookByOwner(Vip vip)  {
		return bookDao.findAllBookByOwner(vip);
	}

	public void removeBook(Integer id) {
		bookDao.deleteBook(id);
		
	}

	public Book save(Book book) {
		return bookDao.insertBook(book);
	}

	public List<Book> findBookByType(String type)  {
		return bookDao.findBookByType(type);
	}
	
}
