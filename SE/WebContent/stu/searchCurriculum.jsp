<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>교과목조회</title>
      <%String id = request.getParameter("id");%>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../stuMain.jsp?id=<%=id%>">학생</a>
        <a href="../AcademicDAO/searchInfo.jsp?id=<%=id%>">학적기본</a>
        <div class="dropdown">
          <button class="dropbtn">수업
            <i class="fa fa-caret-down?id=<%=id%>"></i>
          </button>
          <div class="dropdown-content">
            <a href="searchCurriculum.jsp?id=<%=id%>">교과목조회</a>
            <a href="searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a>
            <a href="../lecturePlanDAO/searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
          </div>
        </div>
        <a href="../ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">장학생현황</a>
        <a href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a>
        <a href="applyCourse.jsp?id=<%=id%>">수강신청</a>
      </div>
    </header>    
		<%=id%><a href="../login.html"/>로그아웃</a>
    <form id="curriculumBar" action="../curriculumDAO/searchCurriculum.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo">
    	<fieldset style = "width:800px">        
	         <legend>교과목조회</legend>
    	학과<select name='department'>
	    	<option value='cse'>컴퓨터공학과</option>
		</select>
		과목명<input type="text" name="subject" required>		
		<input type="hidden" name="id" value="<%=id %>">
		<input type="submit" value="조회">	
	<table id="curriculumsTable">
		<tr>
			<th>과목명</th>
			<th>분반</th>
			<th>교수명</th>
			<th>과목코드</th>
		</tr>
	</table>
	</form>
  </fieldset>
  </body>
</html>
