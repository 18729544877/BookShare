package com.linksky.ssh.entity;

import java.io.Serializable;

public class Dictionary implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer dictionaryId;
	private String dictionaryName;
	private String dictionaryCode;
	private String dictionaryType;
	private String dictionaryTypeCode;
	private Integer dictionaryOrder;
	
	public Integer getDictionaryId(){
		return dictionaryId;
	}
	public void setDictionaryId(Integer dictionaryId) {
		this.dictionaryId = dictionaryId;
	}
	public String getDictionaryName() {
		return dictionaryName;
	}
	public void setDictionaryName(String dictionaryName) {
		this.dictionaryName = dictionaryName;
	}
	public String getDictionaryCode() {
		return dictionaryCode;
	}
	public void setDictionaryCode(String dictionaryCode) {
		this.dictionaryCode = dictionaryCode;
	}
	public String getDictionaryType() {
		return dictionaryType;
	}
	public void setDictionaryType(String dictionaryType) {
		this.dictionaryType = dictionaryType;
	}
	public String getDictionaryTypeCode() {
		return dictionaryTypeCode;
	}
	public void setDictionaryTypeCode(String dictionaryTypeCode) {
		this.dictionaryTypeCode = dictionaryTypeCode;
	}
	public Integer getDictionaryOrder() {
		return dictionaryOrder;
	}
	public void setDictionaryOrder(Integer dictionaryOrder) {
		this.dictionaryOrder = dictionaryOrder;
	}

}
