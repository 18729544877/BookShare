package com.linksky.ssh.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.linksky.ssh.entity.Admin;
import com.linksky.ssh.entity.Book;
import com.linksky.ssh.entity.BorrowRecord;
import com.linksky.ssh.entity.Vip;
import com.linksky.ssh.service.BookService;
import com.linksky.ssh.service.BorrowRecordService;
import com.opensymphony.xwork2.ModelDriven;

public class BookAction extends BaseAction implements ModelDriven<Book>{
private Book book ;
private BookService bookService ;

BorrowRecordService borrowRecordService; 

public void setBookService(BookService bookService) {
	this.bookService = bookService;
}
public void setBorrowRecordService(BorrowRecordService borrowRecordService) {
	this.borrowRecordService = borrowRecordService;
}


public String show() {
	List<Book> bookList = bookService.findAllBook();
	getRequest().setAttribute("bookList", bookList);
	return "show";
}
	public String list() {
		List<Book> bookList = bookService.findAllBook();
		getRequest().setAttribute("bookList", bookList);
		return "list";
	}
	
	public String type() throws SQLException {
		List<Book> bookList = bookService.findBookByType(getRequest().getParameter("bookType"));
    	getRequest().setAttribute("bookList", bookList);
		return "showTypeBook";
	}
	
	public String doupdate(){
		Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
		book.setBookOwner(vip);
		bookService.updateBook(book);
		return "updated";
	}
	
	public String update() throws SQLException {

	List<Book> bookList =bookService.findAllBook();
	getRequest().setAttribute("bookList", bookList);
		return "update";
	}
	
	public String updatego() {
		Book book =bookService.findById(Integer.valueOf(getRequest().getParameter("bookId")));
		getRequest().setAttribute("book", book);
		return "updatego";
	}
	
	public String borrow() {
		List<Book> bookList = bookService.findBookByOperate("ΩË‘ƒ");
		getRequest().setAttribute("bookList", bookList);
		return "borrow";
	}
	
	public String share()  {
		
		List<Book> bookList = bookService.findBookByOperate("π≤œÌ");
		getRequest().setAttribute("bookList", bookList);
		return "share";
	}
	
	public String back()  {
		Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
		List<Book> bookList = bookService.findAllBookByOwnerAndOperate(vip, "ΩË‘ƒ÷–");
		getRequest().setAttribute("bookList", bookList);
		return "back";
	}
	
	public String backgo()  {
		Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
		//Õº È±‡∫≈
		String bookId = getRequest().getParameter("bookId");
		
		Book book =new Book();
		book.setBookId(Integer.valueOf(bookId));
		book.setBookOwner(vip);
		book.setBookOperate("ΩË‘ƒ");
		bookService.updateBook(book);
		
		BorrowRecord borrowRecord = new BorrowRecord();
		borrowRecord.setBookId(Integer.valueOf(bookId));
		borrowRecord.setVipId(vip.getVipId());
		borrowRecord.setBorrowState("“—πÈªπ");
		borrowRecord.setRebackDate(new Date());
		borrowRecordService.changeBorrowState(borrowRecord);
		return "backgo";
	}
	
	public String change()  {
		
		List<Book> bookList = bookService.findBookByOperate("ΩË‘ƒ");
    	getRequest().setAttribute("bookList", bookList);
		return "change";
	}

	
	public String borrowgo() {
		Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
		String id = getRequest().getParameter("bookId");
		Book book = new Book();
		book.setBookId(Integer.valueOf(id));
		book.setBookOperate("ΩË‘ƒ÷–");
		book.setBookOwner(vip);
		bookService.updateBook(book);
		 
		BorrowRecord br = new BorrowRecord();
		br.setBookId(Integer.valueOf(id));
		br.setBorrowDate(new Date());
		br.setBorrowState("ΩË‘ƒ÷–");
		br.setVipId(vip.getVipId());
		borrowRecordService.save(br);
		return "borrowgodo";
	}

	public String findone() {
		
		String id = getRequest().getParameter("bookId");
		System.out.println(id);
		Book newbook = bookService.findById(Integer.valueOf(id));
		getRequest().setAttribute("book", newbook);
		return "findone";
	}
public String add() {
	Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
	book.setBookOwner(vip);
	Book newBook = bookService.save(book);
	return "addone";
}

public String delete() {
	String id =getRequest().getParameter("bookId");
	bookService.removeBook(Integer.valueOf(id));
	return "deleteone";
}


public Book getModel() {
	if(null == book) {
		book = new Book();
	}
	return book;
}

}
