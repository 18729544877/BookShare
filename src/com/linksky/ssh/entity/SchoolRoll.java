package com.linksky.ssh.entity;

import java.util.Date;

public class SchoolRoll {
private Integer rollId;
private String rollNo;
private String joinSchool;
private Date joinDate;
private Student student;

public Integer getRollId() {
	return rollId;
}
public void setRollId(Integer rollId) {
	this.rollId = rollId;
}

public String getRollNo() {
	return rollNo;
}
public void setRollNo(String rollNo) {
	this.rollNo = rollNo;
}
public String getJoinSchool() {
	return joinSchool;
}
public void setJoinSchool(String joinSchool) {
	this.joinSchool = joinSchool;
}
public Date getJoinDate() {
	return joinDate;
}
public void setJoinDate(Date joinDate) {
	this.joinDate = joinDate;
}
public Student getStudent() {
	return student;
}
public void setStudent(Student student) {
	this.student = student;
}


}
