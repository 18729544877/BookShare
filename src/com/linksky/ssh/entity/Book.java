package com.linksky.ssh.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Book implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer bookId;
	private String bookName;
	private String bookType;
	private String bookIsbn;
	private String bookAuthor;
	private BigDecimal bookPrice;
	private String bookPublisher;
	private String bookOperate;
	private Date bookReleaseDate;
	private Vip bookOwner;
	private String bookDesc;
	private String bookFace;
	
	public Integer getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookType() {
		return bookType;
	}
	public void setBookType(String bookType) {
		this.bookType = bookType;
	}
	public String getBookIsbn() {
		return bookIsbn;
	}
	public void setBookIsbn(String bookIsbn) {
		this.bookIsbn = bookIsbn;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public BigDecimal getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(BigDecimal bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookPublisher() {
		return bookPublisher;
	}
	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}
	public String getBookOperate() {
		return bookOperate;
	}
	public void setBookOperate(String bookOperate) {
		this.bookOperate = bookOperate;
	}
	public Date getBookReleaseDate() {
		return bookReleaseDate;
	}
	public void setBookReleaseDate(Date bookReleaseDate) {
		this.bookReleaseDate = bookReleaseDate;
	}
	public Vip getBookOwner() {
		return bookOwner;
	}
	public void setBookOwner(Vip bookOwner) {
		this.bookOwner = bookOwner;
	}
	public String getBookDesc() {
		return bookDesc;
	}
	public void setBookDesc(String bookDesc) {
		this.bookDesc = bookDesc;
	}
	public String getBookFace() {
		return bookFace;
	}
	public void setBookFace(String bookFace) {
		this.bookFace = bookFace;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
