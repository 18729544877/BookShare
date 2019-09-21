package com.linksky.ssh.service;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.dao.MenuDao;
import com.linksky.ssh.entity.Menu;

public class MenuService {
	
	private MenuDao menuDao  ;
	
	
	
	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}

	public Menu saveMenu(Menu menu) throws SQLException{
		
		return menuDao.insertMenu(menu);
		
	}
	
	public Menu getMenuById(int id) throws SQLException{
		
		return menuDao.SelectMenuById(id);
		
	}
	
	public List<Menu> findMenuByType(String type) throws SQLException{
		
		return menuDao.selectMenuByType(type);
		
	}
	
	public List<Menu> findAllMenu() throws SQLException{
		
		return menuDao.selectAllMenu();
		
	}
	
	public void updateMenu(Menu menu) throws SQLException{
		
		 menuDao.updateMenu(menu);
	}

	public void deleteMenuById(int id) throws SQLException{
		
		menuDao.removeMenu(id);
		
	}

	public Menu findMenuById(int id) throws SQLException {
		return menuDao.findMenuById(id);
	}

	public List<Menu> findMenuByTypeAndParentId(String type, String  parentId) throws SQLException {
		return menuDao.selectMenuByTypeAndParentId(type,parentId );
	}

	public List<Menu> findMenuByParentId(Integer parentId) {
		return menuDao.selectMenuByParentId(parentId );
	}


	
}
