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
  	<title>학적기본</title>
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
            <a href="searchLecturePlan.jsp?id=<%=id%>">강의계획서조회</a>
          </div>
        </div>
        <a href="searchScholarship.jsp?id=<%=id%>">장학생현황</a>
        <a href="searchReport.jsp?id=<%=id%>">성적표관리</a>
        <a href="applyCourse.jsp?id=<%=id%>">수강신청</a>
      </div>
    </header>
			<%=id%><a href="../login.html"/>로그아웃</a>
	
	<%
	  
	    String fileName = id+".txt";
		String fileDir = "ID";
		String filePath = request.getRealPath(fileDir) + "/";
		filePath += fileName;
		
		FileReader filereader = new FileReader(filePath);
		BufferedReader bufReader = new BufferedReader(filereader);
		String stuNum = bufReader.readLine();
		String pass = bufReader.readLine();
		String name = bufReader.readLine();
		String major = bufReader.readLine();
		String phoneNum = bufReader.readLine();
		bufReader.close();   
	    %>

      <div class="formCenter" accept-charset="utf-8" id ="stuInfo" method = "get">
          <fieldset style = "width:200px">        
	         <legend>학적기본</legend>
	           <table>
	        <tr>
		        <td> 학번 :</td>
		        <td><%=id%></td>
	        </tr>
	        <tr>
		  		<td>비밀번호:</td>
		  		<td><%=pass%></td>
	  		</tr>
	  		<tr>
		  		<td>이름 :</td>
		  		<td><%=name%></td>
	  		</tr>
		  	<tr>
		    	<td>학과 :</td>
	    		<td><%=major%></td>
	    	</tr>
	    	<tr>
		    	<td>전화번호:</td>
		    	<td><%=phoneNum%></td>
           </table>
    </div>
  </body>
</html>
