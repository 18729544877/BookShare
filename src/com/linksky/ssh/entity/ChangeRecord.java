package com.linksky.ssh.entity;

import java.io.Serializable;
import java.util.Date;

public class ChangeRecord implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer changeId;
	private Integer changeInVipId;
	private Integer changeInBookId;
	private Integer changeOutVipId;
	private Integer changeOutBookId;
	private Date changeDate;
	public Integer getChangeId() {
		return changeId;
	}
	public void setChangeId(Integer changeId) {
		this.changeId = changeId;
	}
	public Integer getChangeInVipId() {
		return changeInVipId;
	}
	public void setChangeInVipId(Integer changeInVipId) {
		this.changeInVipId = changeInVipId;
	}
	public Integer getChangeInBookId() {
		return changeInBookId;
	}
	public void setChangeInBookId(Integer changeInBookId) {
		this.changeInBookId = changeInBookId;
	}
	public Integer getChangeOutVipId() {
		return changeOutVipId;
	}
	public void setChangeOutVipId(Integer changeOutVipId) {
		this.changeOutVipId = changeOutVipId;
	}
	public Integer getChangeOutBookId() {
		return changeOutBookId;
	}
	public void setChangeOutBookId(Integer changeOutBookId) {
		this.changeOutBookId = changeOutBookId;
	}
	public Date getChangeDate() {
		return changeDate;
	}
	public void setChangeDate(Date changeDate) {
		this.changeDate = changeDate;
	}

}
