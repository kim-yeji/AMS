<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  	<title>학생페이지</title>
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="main.js" type="text/javascript"></script>
 <header id="header">
      <div class="navbar">
        <a href="stu_main.jsp">학생</a>
        <a href="stu/searchInfo.jsp">학적기본</a>
        <div class="dropdown">
          <button class="dropbtn">수업
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="stu/searchCurriculum.jsp">교과목조회</a>
            <a href="stu/searchLecTimetable.jsp">강의시간표조회</a>
            <a href="stu/searchLecturePlan.jsp">강의계획서조회</a>
          </div>
        </div>
        <a href="stu/searchScholarship.jsp">장학생현황</a>
        <a href="stu/searchReport.jsp">성적표관리</a>
        <a href="stu/applyCourse.jsp">수강신청</a>
      </div>
</header>
</head>
<body>
</html>
