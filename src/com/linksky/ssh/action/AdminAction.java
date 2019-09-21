package com.linksky.ssh.action;

import java.sql.SQLException;
import java.util.List;

import com.linksky.ssh.entity.Admin;
import com.linksky.ssh.entity.Menu;
import com.linksky.ssh.service.AdminService;
import com.linksky.ssh.service.MenuService;
import com.opensymphony.xwork2.ModelDriven;

public class AdminAction extends BaseAction implements ModelDriven<Admin> {

	private static final long serialVersionUID = 1L;
	private Admin admin;
	private AdminService adminService;
	private MenuService menuService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	// public void validateLogin() {
	// if ("".equals(admin.getAdminAccount()) || null ==
	// admin.getAdminAccount()) {
	// addFieldError("adminAccount", "用户名不能为空");
	// }
	// if ("".equals(admin.getAdminPassword()) || null ==
	// admin.getAdminPassword()) {
	// addFieldError("adminPassword", "密码不能为空");
	// }
	// }
	public String quit() {
		getSession().invalidate();
		Object user = getSession().getAttribute(Constant.LOGIN_USER);
		System.out.println(user);
		getRequest().setAttribute("msg", "管理员成功退出");
		return "login";
	}

	public String login() throws SQLException {
		Admin loginAdmin = adminService.login(admin.getAdminAccount(), admin.getAdminPassword());
		if (null != loginAdmin && !"null".equals(loginAdmin)) {
			getRequest().getSession().setAttribute(Constant.LOGIN_USER, loginAdmin);
			return "init";
		} else {
			getRequest().setAttribute("msg", "用户名或者密码错误");
			return "login";
		}
	}

	public String list() {
		List<Admin> list = adminService.findAllAdmin();
		getRequest().setAttribute("adminList", list);
		return "list";
	}

	public String init() throws SQLException {
		List<Menu> menuList = menuService.findMenuByTypeAndParentId("GL", null);
		List<Menu> menuLists = menuService.findMenuByType("GL");
		getRequest().setAttribute("menuList", menuList);
		getRequest().setAttribute("menuLists", menuLists);
		return "index";
	}

	public Admin getModel() {
		if (admin == null) {
			admin = new Admin();
		}
		return admin;
	}

}
