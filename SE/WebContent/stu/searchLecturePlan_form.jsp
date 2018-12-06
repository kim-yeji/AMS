<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>강의계획서 조회</title>
<%String id = request.getParameter("id");%>
<link rel="stylesheet" type="text/css" href="../style.css">
<script src="main.js" type="text/javascript"></script>
</head>
<body>
	<header id="header">
	<div class="navbar">
		<a href="../stuMain.jsp?id=<%=id%>">학생</a> <a
			href="searchInfo.jsp?id=<%=id%>">학적기본</a>
		<div class="dropdown">
			<button class="dropbtn">
				수업 <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="searchCurriculum.jsp?id=<%=id%>">교과목조회</a> <a
					href="searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a> <a
					href="searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
			</div>
		</div>
		<a href="searchScholarship.jsp?id=<%=id%>">장학생현황</a> <a
			href="searchReport.jsp?id=<%=id%>">성적표관리</a> <a
			href="applyCourse.jsp?id=<%=id%>">수강신청</a>
	</div>
	</header>
	<%=id%><a href="../login.html" />로그아웃</a>
	<form id="lecTimetableBar" action="searchLecturePlan_form.jsp" class="formCenter" accept-charset="utf-8" id="stuInfo">
		<fieldset style="width: 800px">
			<legend>강의계획서 조회</legend>
			과목명 <input type="text" name="subject">
			<input type="hidden" name="id" value="<%=id%>">
			<input type="submit" value="조회">
	</form>

	<table id="lecTimeTable">
		<tr>
			<th>과목명</th>
		</tr>

	</table>
	<%
	 String subject = request.getParameter("subject");
    String fileName = subject+".txt";
	String fileDir = "lecPlan";
	String filePath = request.getRealPath(fileDir) + File.separator;
	filePath += fileName;
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	subject = bufReader.readLine();
	String lecPlan = bufReader.readLine();
	bufReader.close();
	%>
		<table id="lecPlantable">
			<td><a href="lecPlanRead.jsp?subject=<%=subject%>&id=<%=id%>" ><%=subject%></a></td>
		</table>

	
	
    </script>
	</fieldset>

</body>
</html>