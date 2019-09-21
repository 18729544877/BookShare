package com.linksky.ssh.action;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.entity.Dictionary;
import com.linksky.ssh.entity.Menu;
import com.linksky.ssh.service.DictionaryService;
import com.linksky.ssh.service.MenuService;
import com.opensymphony.xwork2.ModelDriven;

public class MenuAction extends BaseAction implements ModelDriven<Menu>{
private Menu menu ;
private MenuService menuService;
private DictionaryService dictionaryService;



public void setMenuService(MenuService menuService) {
	this.menuService = menuService;
}

public void setDictionaryService(DictionaryService dictionaryService) {
	this.dictionaryService = dictionaryService;
}

public String list() throws SQLException {
	List<Menu> menuList =menuService.findAllMenu();
	getRequest().setAttribute("menuList", menuList);
	System.out.println("lalla");
	return "list";
}

public String save() throws SQLException {
	Menu menu1 = menuService.saveMenu(menu);
	if(null != menu1) {
		return "save";		
	}else {
		return "add";
	}
}

public String add() throws SQLException {
	List<Dictionary> dictionaryList = dictionaryService.findDictionaryByTypeCode("CDLX");
	getRequest().setAttribute("menutypes", dictionaryList);
	return "add";
}

public String update() throws SQLException {
	List<Menu> menuList =menuService.findAllMenu();
	getRequest().setAttribute("menuList", menuList);
	return "update";
}

public String modify() throws SQLException {
	
	Menu onemenu =menuService.findMenuById(menu.getMenuId());
	getRequest().setAttribute("menu", onemenu);
	return "modify";
}

public String iddel() throws NumberFormatException, SQLException {
	String id=getRequest().getParameter("menuId");
    menuService.deleteMenuById(Integer.valueOf(id));
	return "iddel";
	
}

public String resave() throws SQLException {
	menuService.updateMenu(menu);
	return "reupdate";
}

public String delete() throws SQLException {
	List<Menu> menuList =menuService.findAllMenu();
	getRequest().setAttribute("menuList", menuList);
	return "delete";
}


public Menu getModel() {
  if(null == menu) {
	  menu= new Menu();
  }
	return menu;
}

}
