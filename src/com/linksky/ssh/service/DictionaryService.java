package com.linksky.ssh.service;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.dao.DictionaryDao;
import com.linksky.ssh.entity.Dictionary;

public class DictionaryService {
private DictionaryDao dictionaryDao;

	public void setDictionaryDao(DictionaryDao dictionaryDao) {
	this.dictionaryDao = dictionaryDao;
}

	public Dictionary save(Dictionary dic) throws SQLException {

		return dictionaryDao.insertDictionary(dic);
	}

	public List<Dictionary> show() throws SQLException {
		return dictionaryDao.findAllDictionay();
	}

	public List<Dictionary> findDictionaryByTypeCode(String typeCode) throws SQLException {
		return dictionaryDao.findDictionaryByTypeCode(typeCode);
	}

	public List<Dictionary> findAllDictionary() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteDictionaryId(Integer id) throws SQLException {
		dictionaryDao.deleteDictionaryById(id);
	}

	public Dictionary findDictionaryById(Integer id) throws SQLException {
	return dictionaryDao.findDictionaryById(id);
	}

	public void change(Dictionary dictionary) throws SQLException {
	dictionaryDao.updateDictionary(dictionary);
		
	}

}
