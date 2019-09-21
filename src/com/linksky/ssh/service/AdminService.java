package com.linksky.ssh.service;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.dao.AdminDao;
import com.linksky.ssh.entity.Admin;


public class AdminService {
	private AdminDao adminDao ;
	
	
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public Admin saveAdmin(Admin admin) throws SQLException{
		
		return adminDao.insertAdmin(admin);

	}
	
	public Admin login(String account,String password) throws SQLException{
		
		return adminDao.selectAdminByAccountAndPassword(account, password);
		
	}

	public List<Admin> findAllAdmin() {
		return adminDao.findAllAdmin();
	}
	
	

}
