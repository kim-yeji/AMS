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
<link rel="stylesheet" type="text/css" href="../style.css">
<script src="main.js" type="text/javascript"></script>
</head>
<body>
	<header id="header">
	<div class="navbar">
		<a href="../stuMain.jsp">학생</a> <a href="searchInfo.jsp">학적기본</a>
		<div class="dropdown">
			<button class="dropbtn">
				수업 <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="searchCurriculum.jsp">교과목조회</a> <a
					href="searchLecTimetable.jsp">강의시간표조회</a> <a
					href="searchLecturePlan.jsp">강의계획서조회</a>
			</div>
		</div>
		<a href="searchScholarship.jsp">장학생현황</a> <a href="searchReport.jsp">성적표관리</a>
		<a href="applyCourse.jsp">수강신청</a>
	</div>
	</header>
	<form id="lectimetable" action="searchLecTimetable_form.jsp">
		과목명
		<input type="text" name="subject"> 
		<input type="submit" value="조회">
	</form>

	<%

		String subject = request.getParameter("subject");
		String[] fileNameList;
		String name_Of_File;
		String fileDir = "lecPlan";
		String filePath = request.getRealPath(fileDir) + File.separator;
	
		File  file = new File(filePath);
		fileNameList = file.list();
		
		try{					
			for(int i=0;i<fileNameList.length;i++){
				name_Of_File = fileNameList[i];	
				System.out.println("> "+filePath+name_Of_File);
				FileReader filereader = new FileReader(filePath+name_Of_File);
				BufferedReader bufReader = new BufferedReader(filereader);
				subject = bufReader.readLine();
				//String lecPlan = bufReader.readLine();

	%>
		<a href="lecPlanRead.jsp?subject=<%=subject%>"><%=subject%></a><br/>

	<%
				bufReader.close();
			}
		}catch(Exception e){
			out.print("데이터를 쓸 수 없습니다.<br/>");			
		}
	%>

</body>
</html>