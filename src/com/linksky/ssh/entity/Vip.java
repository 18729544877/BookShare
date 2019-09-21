package com.linksky.ssh.entity;

import java.io.Serializable;
import java.util.Date;

public class Vip implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer vipId;
	private String vipAccount;
	private String vipPassword;
	private String vipNumber;
	private String vipName;
	private String vipSex;
	private Date vipBirthday;
	private String vipPhone;
	private String vipIdcard;
	private String vipLevel;
	private Date vipJoinDate;
	
	public Integer getVipId() {
		return vipId;
	}
	public void setVipId(Integer vipId) {
		this.vipId = vipId;
	}
	public String getVipAccount() {
		return vipAccount;
	}
	public void setVipAccount(String vipAccount) {
		this.vipAccount = vipAccount;
	}
	public String getVipPassword() {
		return vipPassword;
	}
	public void setVipPassword(String vipPassword) {
		this.vipPassword = vipPassword;
	}
	public String getVipNumber() {
		return vipNumber;
	}
	public void setVipNumber(String vipNumber) {
		this.vipNumber = vipNumber;
	}
	public String getVipName() {
		return vipName;
	}
	public void setVipName(String vipName) {
		this.vipName = vipName;
	}
	public String getVipSex() {
		return vipSex;
	}
	public void setVipSex(String vipSex) {
		this.vipSex = vipSex;
	}
	public Date getVipBirthday() {
		return vipBirthday;
	}
	public void setVipBirthday(Date vipBirthday) {
		this.vipBirthday = vipBirthday;
	}
	public String getVipPhone() {
		return vipPhone;
	}
	public void setVipPhone(String vipPhone) {
		this.vipPhone = vipPhone;
	}
	public String getVipIdcard() {
		return vipIdcard;
	}
	public void setVipIdcard(String vipIdcard) {
		this.vipIdcard = vipIdcard;
	}
	public String getVipLevel() {
		return vipLevel;
	}
	public void setVipLevel(String vipLevel) {
		this.vipLevel = vipLevel;
	}
	public Date getVipJoinDate() {
		return vipJoinDate;
	}
	public void setVipJoinDate(Date vipJoinDate) {
		this.vipJoinDate = vipJoinDate;
	}
	@Override
	public String toString() {
		return "Vip [vipId=" + vipId + ", vipAccount=" + vipAccount + ", vipPassword=" + vipPassword + ", vipNumber="
				+ vipNumber + ", vipName=" + vipName + ", vipSex=" + vipSex + ", vipBirthday=" + vipBirthday
				+ ", vipPhone=" + vipPhone + ", vipIdcard=" + vipIdcard + ", vipLevel=" + vipLevel + ", vipJoinDate="
				+ vipJoinDate + "]";
	}
	
	
}
