package com.student.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//import org.hibernate.annotations.Entity;

 
@Entity
@Table
public class student_detai {
	@Id
	@GeneratedValue
	@Column
private int id;
	@Column
	private int rollno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column
private String name;
	@Column
private  String phone;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	 

}
