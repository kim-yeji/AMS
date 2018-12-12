<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>장학생현황</title>
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
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="../stu/searchCurriculum.jsp?id=<%=id%>">교과목조회</a>
            <a href="../stu/searchLecTimetable.jsp?id=<%=id%>">강의시간표조회</a>
            <a href="../stu/searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
          </div>
        </div>
        <a href="../stu/searchScholarship.jsp?id=<%=id%>">장학생현황</a>
        <a href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a>
        <a href="../stu/applyCourse.jsp?id=<%=id%>">수강신청</a>
      </div>
    </header>
    <%
	  
	    String fileName = id+".txt";
		String fileDir = "Scholarship";
		String filePath = request.getRealPath(fileDir) + "/";
		filePath += fileName;

		File f = new File(filePath);
		
		try{
			if(f.exists()){
		FileReader filereader = new FileReader(filePath);
		BufferedReader bufReader = new BufferedReader(filereader);
		String stuNum = bufReader.readLine();
		String name = bufReader.readLine();
		String major = bufReader.readLine();
		String grade = bufReader.readLine();
		bufReader.close();   
	 %>
	    
		<%=id%><a href="../login.html"/>로그아웃</a>
		<div class ="formCenter" accept-charset="utf-8" name = "stuInfo" >
	    <fieldset style = "width:600px">
	        <legend>장학생현황</legend>
	           <table>
	        <tr>
		        <td> 학번 :</td>
		        <td><%=stuNum%></td>
	        </tr>
	        <tr>
		  		<td>이름:</td>
		  		<td><%=name%></td>
	  		</tr>
	  		<tr>
		  		<td>학과 :</td>
		  		<td><%=major%></td>
	  		</tr>
		  	<tr>
		    	<td>장학등급 :</td>
	    		<td><%=grade%>등급</td>
	    	</tr>
           </table>
	 <%  }else if(!f.exists()){
		%>
		<script>
		alert("장학생이 아닙니다.");
		history.go(-1); 		
		</script>	
	<%}
	}catch(Exception e){
			out.print("데이터를 쓸 수 없습니다.<br/>");			
	}
		%>
  </body>
</html>
