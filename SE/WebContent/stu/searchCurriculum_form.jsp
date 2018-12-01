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
  	<title>교과목조회</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../stuMain.jsp">학생</a>
        <a href="searchInfo.jsp">학적기본</a>
        <div class="dropdown">
          <button class="dropbtn">수업
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="searchCurriculum.jsp">교과목조회</a>
            <a href="searchLecTimetable.jsp">강의시간표조회</a>
            <a href="searchLecturePlan.jsp">강의계획서조회</a>
          </div>
        </div>
        <a href="searchScholarship.jsp">장학생현황</a>
        <a href="searchReport.jsp">성적표관리</a>
        <a href="applyCourse.jsp">수강신청</a>
      </div>
    </header>

    <form id="curriculumBar" action="searchCurriculum_form.jsp">
    	학과<select name='department'>
	    	<option value='cse'>컴퓨터공학과</option>
		</select>&nbsp;&nbsp;&nbsp;
		과목명<input type="text" name="subject">
		<input type="submit" value="조회">
	</form>
	
	<%
	String subject = request.getParameter("subject");
    String fileName = subject+".txt";
	String fileDir = "Curriculum";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	subject = bufReader.readLine();
	String proName = bufReader.readLine();
	String lecCode = bufReader.readLine();
	bufReader.close();
    %>
   
    
	<table id="curriculumsTable">
		<tr>
			<th>
				과목명
			</th>
			<th>
				교수명
			</th>
			<th>
				과목코드
			</th>
		</tr>
	</table>
	    
    <script type="text/javascript">
    	var sub = "<%=subject%>";
    	var proName = "<%=proName%>";
    	var lec = "<%=lecCode%>";
	    var mktr = document.createElement('tr');
	    var mktd1 = document.createElement('td');
	    var mktd2 = document.createElement('td');
	    var mktd3 = document.createElement('td');
	    var mksub = document.createTextNode(sub);
	    var mkpro = document.createTextNode(proName);
	    var mklec = document.createTextNode(lec);

	    mktr.appendChild(mktd2);
	    mktr.appendChild(mktd3);
	    mktd1.appendChild(mksub);
	    mktd2.appendChild(mkpro);
	    mktd3.appendChild(mklec);
	    mktr.appendChild(mktd1);
	    mktr.appendChild(mktd2);
	    mktr.appendChild(mktd3);
	    document.getElementById("curriculumsTable").appendChild(mktr);    	
    </script>    
  </body>
</html>