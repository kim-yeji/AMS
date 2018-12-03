<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>교수페이지</title>
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="script.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
 <%String id = request.getParameter("id"); %>
      <div class="navbar">
        <a href="pro_main.jsp?id=<%=id%>">교수</a>
        <a href="pro/registerReport.jsp?id=<%=id%>">성적처리</a>
        <a href="pro/registerLecturePlan.jsp?id=<%=id%>">강의계획서등록</a>
      </div>
    </header>
    	<div id="">
		<%=id%><a href="#" class="button" type="submit" onclick="move('login.html');"/>로그아웃</a>
	</div>
  </body>
</html>
