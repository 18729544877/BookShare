package com.linksky.ssh.dao;

import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.linksky.ssh.entity.BorrowRecord;

public class BorrowRecordDao {
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	/**
	 * 添加借书记录
	 * @param borrowRecord
	 * @return
	 * @throws SQLException
	 */
	public BorrowRecord insert(BorrowRecord borrowRecord) {
		Integer id =  (Integer) hibernateTemplate.save(borrowRecord);
		borrowRecord.setBookId(id);
		return borrowRecord;
	}


/**
 * 修改结束记录
 * @param borrowRecord
 * @throws SQLException
 */
	public void updateBorrowState(BorrowRecord borrowRecord)  {
		
		String hql =" from BorrowRecord where bookId=? and vipId=?";
		List list = hibernateTemplate.find(hql, new Object[] {borrowRecord.getBookId(),borrowRecord.getVipId()});
		if(null != list && list.size() ==1) {
			BorrowRecord  newRorrowRecord = (BorrowRecord) list.get(0);		
			BorrowRecord borrowOne = new BorrowRecord();
			borrowOne.setBorrowId(newRorrowRecord.getBorrowId());
			borrowOne.setRebackDate(borrowRecord.getRebackDate());
			updateBorrowState(borrowOne);
		}
	}


public List<BorrowRecord> selectAllBorrowRecordForPage(int beginIndex, int record) {

	String hql = " from BorrowRecord limit ?,?";
	
	List<BorrowRecord> list =(List<BorrowRecord>) hibernateTemplate.find(hql,new Object[] {beginIndex,record});
	return list;
}

public List<BorrowRecord> selectBorrowRecord(){
	String hql = " from BorrowRecord ";
	List<BorrowRecord> list =(List<BorrowRecord>) hibernateTemplate.find(hql);
	return list;
}

}
