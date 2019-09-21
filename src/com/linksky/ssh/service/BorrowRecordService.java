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
	 * �������ͼ���¼
	 * 
	 * @param br
	 * @return
	 * @throws SQLException
	 */
	public BorrowRecord save(BorrowRecord br) {

		return borrowRecordDao.insert(br);
	}

	/**
	 * �ı����ͼ���¼
	 * 
	 * @param br
	 * @throws SQLException
	 */
	public void changeBorrowState(BorrowRecord br) {
		borrowRecordDao.updateBorrowState(br);

	}



}
