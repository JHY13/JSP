package com.jspprj.web.dao.mybatis;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class JspSessionFactoryBuilder extends HttpServlet {
	static String src ="com/jspprj/web/dao/mybatis/config.xml";			
	static SqlSessionFactory ssf = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		InputStream is = null;
		try {
			is= Resources.getResourceAsStream(src);
		} catch (IOException e) {
			e.printStackTrace();
		}
		ssf = new SqlSessionFactoryBuilder().build(is);
	}
	
	public static SqlSessionFactory getSqlSqlsessionFactory(){
		return ssf;
	}
}
