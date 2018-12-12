<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.io.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<%String id = request.getParameter("id");
String subjects = request.getParameter("subjects");
String classes = request.getParameter("classes");
String proName = request.getParameter("proName");
String lecCode = request.getParameter("lecCode");
%>
<link rel="stylesheet" type="text/css" href="../style.css">
<script src="../script.js" type="text/javascript"></script>
</head>
<body>
	<header id="header">
		<div class="navbar">
			<a href="../stuMain.jsp?id=<%=id%>">학생</a> <a
				href="../AcademicDAO/searchInfo.jsp?id=<%=id%>">학적기본</a>
			<div class="dropdown">
				<button class="dropbtn">
					수업 <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="../stu/searchCurriculum.jsp?id=<%=id%>">교과목조회</a> <a
						href="../stu/searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a> <a
						href="../stu/searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
				</div>
			</div>
			<a href="../ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">장학생현황</a> <a
				href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a> <a
				href="../stu/applyCourse.jsp?id=<%=id%>">수강신청</a>
		</div>
	</header>
	<%=id%><a href="../login.html" />로그아웃
	</a>
	
	<%

    String fileName = id+".txt";
	String fileDir = "Course";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	File f = new File(filePath);
	BufferedWriter bw = null;

	try{
		FileWriter fw = new FileWriter(f,true); 	
		bw = new BufferedWriter(fw);
	
		bw.write(subjects);
	  	bw.write(" ");
	  	bw.write(classes);
	  	bw.write(" ");
	  	bw.write(proName);
	  	bw.write(" ");
	  	bw.write(lecCode);
	  	bw.newLine();
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	%>
	<div id="Write_Action">
		<h1><%=subjects %>가 수강 신청되었습니다.</h1>
		<a href="#" class="button" type="submit" onclick="move('../stu/applyCourse.jsp?id=<%=id%>');"/>확인</a>
	</div>
	
</body>
</html>
