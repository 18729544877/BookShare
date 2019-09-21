package com.linksky.ssh.action;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import com.linksky.ssh.entity.Menu;
import com.linksky.ssh.entity.Vip;
import com.linksky.ssh.service.MenuService;
import com.linksky.ssh.service.VipService;
import com.opensymphony.xwork2.ModelDriven;

public class VipAction extends BaseAction implements ModelDriven<Vip> {
	private Vip vip;
	private VipService vipService;
	private MenuService menuService ;

	//保存vip
	public String add() throws ParseException, SQLException {
		vip.setVipJoinDate(new Date());
		Vip saveVip = vipService.save(vip);
		// System.out.println("321321");
		return "next";
	}

	//查看vip
	public String look() throws SQLException, ParseException {
		List<Vip> vipList = vipService.show();
		getRequest().setAttribute("vipList", vipList);
		return "look";
	}
	//跟新vip
	public String update() throws SQLException, ParseException {
		List<Vip> vipList = vipService.show();
		getRequest().setAttribute("vipList", vipList);
		return "update";
	}
//跟新提交
	public String updateone() throws NumberFormatException, SQLException {

		String id = getRequest().getParameter("vipId");
		System.out.println(id);
		Vip vip = vipService.findVipById(Integer.valueOf(id));
		getRequest().setAttribute("vip", vip);
		return "updateone";
	}

	//更新确认
	public String go() throws SQLException, ParseException {
		vipService.update(vip);
		return "updone";
	}

/**
 * 显示vip列表
 * @return
 * @throws SQLException
 * @throws ParseException
 */
	public String delete() throws SQLException, ParseException {
		List<Vip> vipList = vipService.show();
		getRequest().setAttribute("vipList", vipList);
		return "delete";
	}

	public String login() throws SQLException {
		Vip vip1 = vipService.login(vip.getVipAccount(), vip.getVipPassword());
		if (vip1 != null) {
			getSession().setAttribute(Constant.LOGIN_USER, vip1);
			return "init";
		} else {
			return "login";
		}
	}
	

	public String init() throws SQLException {
		List<Menu> menuList = menuService.findMenuByType("YH");
		getRequest().setAttribute("menuList", menuList);
		return "index";
	}

	public String show() {
		Vip vip = (Vip) getSession().getAttribute(Constant.LOGIN_USER);
		System.out.println(vip.getVipAccount());
		getRequest().setAttribute("vip", vip);
		return "show";
	}

	public String find() throws SQLException, ParseException {
		String level = getRequest().getParameter("vipLevel");
		System.out.println(level);
		List<Vip> vipList = vipService.findVipByLevel(level);
		getRequest().setAttribute("vipList", vipList);
		return "findsome";
	}

	public String deleteone() throws NumberFormatException, SQLException {

		String vipId = getRequest().getParameter("vipId");
		System.out.println(vipId);
		vipService.remove(Integer.valueOf(vipId));
		return "deleteone";
	}

	public String quit() {
		getSession().invalidate();
		getRequest().setAttribute("msg", "vip成功退出");
		return "viplogin";
	}
	
	
	public void setVipService(VipService vipService) {
		this.vipService = vipService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	public Vip getModel() {
		if (null == vip) {
			vip = new Vip();
		}
		return vip;
	}

}
