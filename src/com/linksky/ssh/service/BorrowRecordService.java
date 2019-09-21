package com.linksky.ssh.service;

import java.sql.SQLException;

import com.linksky.ssh.dao.BorrowRecordDao;
import com.linksky.ssh.entity.BorrowRecord;

public class BorrowRecordService {

	BorrowRecordDao borrowRecordDao;

	public void setBorrowRecordDao(BorrowRecordDao borrowRecordDao) {
		this.borrowRecordDao = borrowRecordDao;
	}

	/**
	 * 插入借阅图书记录
	 * 
	 * @param br
	 * @return
	 * @throws SQLException
	 */
	public BorrowRecord save(BorrowRecord br) {

		return borrowRecordDao.insert(br);
	}

	/**
	 * 改变借阅图书记录
	 * 
	 * @param br
	 * @throws SQLException
	 */
	public void changeBorrowState(BorrowRecord br) {
		borrowRecordDao.updateBorrowState(br);

	}



}
