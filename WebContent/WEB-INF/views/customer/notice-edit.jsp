
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/* String _code = request.getParameter("code");
	
	NoticeDao noticeDao = new MyBatisNoticeDao(); //DAO:data access object 즉 data service 하는 클래스를 분리해서 재사용하도록.
	Notice notice = noticeDao.get(_code);
	pageContext.setAttribute("n", notice); */

	/* 
	pageContext.getRequest();
	pageContext.getServletContext();
	
	request.getRemoteAddr(); */
%>
<%-- 
  내부적으로 자바 변수로 선언되는게 아니라 page데이터 영역의 Attribute 선언되기 떄문에
 <%=변수이름%>형태로 출력 할수 없기때문에 ${변수이름} 이렇게 사용한다
                                                            지역변수를 가지고와서 쓸수가 없어서  
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정 페이지</title>
</head>
<body>
	<h1>수정 페이지</h1>
	<form action="notice-edit" method="post">
		<fieldset>
			<legend>공지사항 수정정보 필드</legend>
			<table border="1">
				<tbody>
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text" name="title" value="${n.title}" /> <%-- --%>
					<tr>
						<td>번호</td>
						<td colspan="3">${n.code}</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>${n.writer}</td>
						<td>조회수</td>
						<td></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="3">${n.regdate}</td>
					</tr>
					<tr>

						<td colspan="4"><textarea name="content" rows="20" cols="60">${n.content}</textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<div>
				<input type="hidden" name="code" value="${n.code}">
				<input type="submit" value="저장">
				<a href="notice-detail?code=${n.code}">취소</a>
			</div>
		</fieldset>
	</form>
</body>
</html>