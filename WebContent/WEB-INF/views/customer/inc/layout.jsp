<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<link href="../css/reset.css" type="text/css" rel="stylesheet" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />

<script src="../js/modernizr-custom.js" type="text/javascript">
	document.createElement("main");
</script>
</head>
<body>
	<!-- ------------------------------------------------------<헤더>----------------------------------------------------------------------- -->
	 <tiles:insertAttribute name="header" />
	<%-- <jsp:include page="../inc/header.jsp"></jsp:include> --%>
	<!-- -------------------------------------------------------<visual>------------------------------------------------------------------- -->
	<tiles:insertAttribute name="visual" />
<%-- 	<jsp:include page="../inc/visual.jsp"></jsp:include> --%>

	<!-- -------------------------------------------------------<aside>------------------------------------------------------------------- -->
	<tiles:insertAttribute name="aside" />
	
	<!-- -------------------------------------------------------<main>------------------------------------------------------------------- -->
	<tiles:insertAttribute name="main" />	

	<!-- -------------------------------------------------------<footer>------------------------------------------------------------------- -->
	<tiles:insertAttribute name="footer" />
<%-- 	<jsp:include page="../inc/footer.jsp"></jsp:include> --%>

</body>
</html>