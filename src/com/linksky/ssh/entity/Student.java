package com.linksky.ssh.entity;

import java.util.Set;

public class Student {
private Integer studentId;
private String studentName;
private Integer studentAge;
private Set<Course> courses;
private SchoolRoll schoolRoll;
public Integer getStudentId() {
	return studentId;
}
public void setStudentId(Integer studentId) {
	this.studentId = studentId;
}
public String getStudentName() {
	return studentName;
}
public void setStudentName(String studentName) {
	this.studentName = studentName;
}
public Integer getStudentAge() {
	return studentAge;
}
public void setStudentAge(Integer studentAge) {
	this.studentAge = studentAge;
}
public Set<Course> getCourses() {
	return courses;
}
public void setCourses(Set<Course> courses) {
	this.courses = courses;
}
/*public Set<SchoolRoll> getSchoolRolls() {
	return schoolRolls;
}
public void setSchoolRolls(Set<SchoolRoll> schoolRolls) {
	this.schoolRolls = schoolRolls;
}*/
public SchoolRoll getSchoolRoll() {
	return schoolRoll;
}
public void setSchoolRoll(SchoolRoll schoolRoll) {
	this.schoolRoll = schoolRoll;
}


}
