package com.jspprj.web.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspprj.web.dao.NoticeDao;
import com.jspprj.web.dao.mybatis.MyBatisNoticeDao;


@WebServlet("/customer/notice-del")
public class NoticeDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		NoticeDao noticeDao = new MyBatisNoticeDao();
		String code = request.getParameter("code");	
		noticeDao.delete(code);
		response.sendRedirect("notice");

	}

}