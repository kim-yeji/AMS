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
  	<title>교과목조회</title>
    <%
    String id = request.getParameter("id");
	%>
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
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="../stu/searchCurriculum.jsp?id=<%=id%>">교과목조회</a>
            <a href="../stu/searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a>
            <a href="../stu/searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
          </div>
        </div>
        <a href="../ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">장학생현황</a>
        <a href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a>
        <a href="../stu/applyCourse.jsp?id=<%=id%>">수강신청</a>
      </div>
    </header>
		<%=id%><a href="../login.html" />로그아웃</a>
    <form id="curriculumBar" action="searchCurriculum.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo">
    	<fieldset style = "width:800px">  
    	학과<select name='department'>
	    	<option value='cse'>컴퓨터공학과</option>
		</select>
		과목명<input type="text" name="subject">
		<input type="hidden" name="id" value="<%=id%>">
		<input type="submit" value="조회">
	</form>
	
	<%
	String subject = request.getParameter("subject");
    String fileName = subject+".txt";
	String fileDir = "Curriculum";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	File f = new File(filePath);
		
	if(!f.exists()){
		
		%><script>
		alert("과목이 존재하지 않습니다.");
		history.go(-1); 
		</script>
		<% 
	} 
if(f.exists()){
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
		
		subject = bufReader.readLine();
		String classes = bufReader.readLine();
		String proName = bufReader.readLine();
		String lecCode = bufReader.readLine();
		bufReader.close(); 	

    %>
   
    
	<table id="curriculumsTable">
		<tr>
			<th>과목명</th>
			<th>분반</th>
			<th>교수명</th>
			<th>과목코드</th>
		</tr>
		<tr>
			<td><%=subject%></td>
			<td><%=classes%></td>
			<td><%=proName%></td>
			<td><%=lecCode%></td>
		</tr>
	</table>    
    </fieldset>    
<% } %>
  </body>
</html>