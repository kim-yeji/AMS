<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>강의계획서조회</title>
      <%String id = request.getParameter("id");%>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../stuMain.jsp?id=<%=id%>">학생</a>
        <a href="searchInfo.jsp?id=<%=id%>">학적기본</a>
        <div class="dropdown">
          <button class="dropbtn">수업
            <i class="fa fa-caret-down"></i>
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
    <form id="lecTimetableBar" action="searchLecturePlan_form.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo">
		<fieldset style="width: 800px">
		<legend>강의계획서 조회</legend>
		과목명
		<input type="text" name="subject" required>
		<input type="hidden" name="id" value="<%=id%>"> 
		<input type="submit" value="조회">
	</form>
	<%
		String subject = request.getParameter("subject");
		String[] fileNameList;
		String fileName = subject+".txt";
		String fileDir = "lecPlan";
		String filePath = request.getRealPath(fileDir) + File.separator;

		File file = new File(filePath);
		fileNameList = file.list();
		try{					
			for(int i=0;i<fileNameList.length;i++){
				fileName = fileNameList[i];	
				FileReader filereader = new FileReader(filePath + fileName);

				BufferedReader bufReader = new BufferedReader(filereader);
				subject = bufReader.readLine();
				
				String lecPlan = bufReader.readLine();

	%>
		<table id="lecPlantable">
			<td><a href="../lecturePlanDAO/searchLecturePlan.jsp?subject=<%=subject%>&id=<%=id%>" ><%=subject%></a></td>
		</table>

	<%
				bufReader.close();
			}
		}catch(Exception e){
			out.print("데이터를 쓸 수 없습니다.<br/>");			
		}
	%>
	</fieldset>
  </body>
</html>
