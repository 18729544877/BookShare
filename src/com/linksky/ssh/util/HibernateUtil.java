package com.linksky.ssh.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class HibernateUtil {
	
	public static SessionFactory sessionFactory;
	public static String hibernateConfig;

	public static SessionFactory getSessionFactory() {
		if(null == sessionFactory){
			init();
		}
		return sessionFactory;
	}

	public static Session getSession(){
		if(null != sessionFactory ){
			return sessionFactory.openSession();
		}else{
			SessionFactory sessionFactory = getSessionFactory();
			return sessionFactory.openSession();
		}
	}
	
	public static void loadConfig(String config){
		hibernateConfig = config;
	}
	
	private static void init() {
		Configuration config = new Configuration();
		if (null != hibernateConfig && !"".equals(hibernateConfig)) {
			config = config.configure(hibernateConfig);
		} else {
			config = config.configure();
		}
		sessionFactory = config.buildSessionFactory();
	}
}
