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
<%String id = request.getParameter("id");%>
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
					<a href="searchCurriculum.jsp?id=<%=id%>">교과목조회</a> <a
						href="searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a> <a
						href="searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
				</div>
			</div>
			<a href="../ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">장학생현황</a> <a
				href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a> <a
				href="applyCourse.jsp?id=<%=id%>">수강신청</a>
		</div>
	</header>
	<%=id%><a href="../login.html" />로그아웃
	</a>
	<div class="formCenter">
	<form action="" accept-charset="utf-8">
		<fieldset style="width: 800px">
			<legend>수강신청</legend>
			학과<select name='department'>
				<option value='cse'>컴퓨터공학과</option>
			</select>
			 <input type="hidden" name="id" value="<%=id %>">
			
	</form>
	<table id="curriculumsTable">
		<tr>
			<th>과목명</th>
			<th>분반</th>
			<th>교수명</th>
			<th>과목코드</th>
			<th>수강신청</th>
		</tr>
		<%
			String subject = request.getParameter("subject");
			String fileName = subject + ".txt";

			String[] fileNames;
			String name_Of_File;
			String fileDir = "Curriculum";
			String filePath = request.getRealPath(fileDir) + "/";

			File f = new File(filePath);
			fileNames = f.list();

			try {
				for (int i = 0; i < fileNames.length; i++) {
					name_Of_File = fileNames[i];

					FileReader filereader = new FileReader(filePath + name_Of_File);
					BufferedReader bufReader = new BufferedReader(filereader);

					String subjects = bufReader.readLine();
					String classes = bufReader.readLine();
					String proName = bufReader.readLine();
					String lecCode = bufReader.readLine();
		%>
		<tr>
			<td><%=subjects%></td>
			<td><%=classes%></td>
			<td><%=proName%></td>
			<td><%=lecCode%></td>
			<td><a href="../courseRegistrationDAO/applyCourse.jsp?id=<%=id%>&subjects=<%=subjects%>&classes=<%=classes%>&proName=<%=proName%>&lecCode=<%=lecCode%>">신청</a>
		</tr>

		<%		     
		      
	      }	      
	      }catch(Exception e){
	          out.print("데이터를 쓸 수 없습니다.<br/>");         
	       }
		%>
	</table>
	</fieldset>
	
	<fieldset style="width: 800px">
			<legend>신청한 과목</legend>
	<table id="lecTimeTable" accept-charset="utf-8" >
		<tr>
			<th>과목명</th>
			<th>분반</th>
			<th>교수명</th>
			<th>과목코드</th>
		</tr>
	<%
	try{
	String fileName2 = id+".txt";
	String fileDir2 = "Course";
	String filePath2 = request.getRealPath(fileDir2) + "/";
	filePath2 += fileName2;
	
	FileReader filereader2 = new FileReader(filePath2);
	BufferedReader bufReader2 = new BufferedReader(filereader2);
	
	String line2="";
	while((line2=bufReader2.readLine())!=null){
		String[] words2 = line2.split(" ");
		
		String subjects2 = words2[0];
		String classes2 = words2[1];
		String proName2 = words2[2];
		String lecCode2 = words2[3];
		%>
		<tr>
			<td><%=subjects2%></td>
			<td><%=classes2%></td>
			<td><%=proName2%></td>
			<td><%=lecCode2%></td>
		<%
	}
	}catch(Exception e){      
     }
    %>
	
	</table>
	</fieldset>
	</div>
</body>
</html>
