package com.hibernate.DBcon;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

//import com.student.entity.Admin;
import com.student.entity.admin;
import com.student.entity.student_detai;

public class DBcon {
static SessionFactory sessionfactory=null;
public static SessionFactory buildSession()
{
	if(sessionfactory!=null) {
		return sessionfactory;
	}
	Configuration cfg=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(student_detai.class);
	sessionfactory=cfg.buildSessionFactory();
	return sessionfactory;
//	.addAnnotatedClass(admin.class)	
}
}
