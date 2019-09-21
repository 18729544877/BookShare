package com.linksky.ssh.entity;

import java.io.Serializable;
import java.util.Date;

public class BorrowRecord implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer borrowId;
	private Integer vipId;
	private Integer bookId;
	private Date borrowDate;
	private Date rebackDate;
	private String borrowState;
	private String note;
	public Integer getBorrowId() {
		return borrowId;
	}
	public void setBorrowId(Integer borrowId) {
		this.borrowId = borrowId;
	}
	public Integer getVipId() {
		return vipId;
	}
	public void setVipId(Integer vipId) {
		this.vipId = vipId;
	}
	public Integer getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public Date getBorrowDate() {
		return borrowDate;
	}
	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}
	public Date getRebackDate() {
		return rebackDate;
	}
	public void setRebackDate(Date rebackDate) {
		this.rebackDate = rebackDate;
	}
	public String getBorrowState() {
		return borrowState;
	}
	public void setBorrowState(String borrowState) {
		this.borrowState = borrowState;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}

}
