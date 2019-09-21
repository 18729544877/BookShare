package com.linksky.ssh.entity;

import java.io.Serializable;

public class Menu implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer menuId;
	private String menuName;
	private String menuUrl;
	private Integer parentId;
	private String menuType;
	private Integer menuOrder;
	private String menuCode;
	
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getMenuType() {
		return menuType;
	}
	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}
	public Integer getMenuOrder() {
		return menuOrder;
	}
	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", menuName=" + menuName + ", menuUrl=" + menuUrl + ", parentId=" + parentId
				+ ", menuType=" + menuType + ", menuOrder=" + menuOrder + ", menuCode=" + menuCode + "]";
	}
	
}
