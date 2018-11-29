<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>학사담당자페이지</title>
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="manMain.jsp">학사담당자</a>
        <div class="dropdown">
          <button class="dropbtn">학적관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="man/registerNum.jsp">학번부여</a>
            <a href="man/modifyInfo.jsp">학적변동</a>
          </div>
        </div>
        <div class="dropdown">
          <button class="dropbtn">교과관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="man/registerCurriculum.jsp">교과목등록</a>
            <a href="man/registerLecTimetable.jsp">강의시간표등록</a>
          </div>
        </div>
        <a href="man/registerScholarship.jsp">장학생등록</a>
      </div>
    </header>
  </body>
</html>
