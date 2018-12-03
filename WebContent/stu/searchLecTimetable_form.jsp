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
<title>강의시간표 조회</title>
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

		교수명 <input type="text" name="profName"> <input type="submit"
			value="조회">
	</form>

	<%
    String proName = request.getParameter("profName");
    String fileName = proName+".txt";
	String fileDir = "lecCode";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	String subject = bufReader.readLine();
	proName = bufReader.readLine();
	String lecCode = bufReader.readLine();
	String lecTime = bufReader.readLine();
	bufReader.close();
    %>


	<table id="lecTimeTable">
		<tr>
			<th>과목명</th>
			<th>교수명</th>
			<th>과목코드</th>
			<th>과목시간</th>
		</tr>
	</table>

	<script type="text/javascript">
    	var sub = "<%=subject%>";
    	var proName = "<%=proName%>";
    	var lec = "<%=lecCode%>";
    	var lect = "<%=lecTime%>";
	    var mktr = document.createElement('tr');
	    var mktd1 = document.createElement('td');
	    var mktd2 = document.createElement('td');
	    var mktd3 = document.createElement('td');
	    var mktd4 = document.createElement('td');
	    var mksub = document.createTextNode(sub);
	    var mkpro = document.createTextNode(proName);
	    var mklec = document.createTextNode(lec);
	    var mklect = document.createTextNode(lect);

	    mktr.appendChild(mktd2);
	    mktr.appendChild(mktd3);
	    mktr.appendChild(mktd4);
	    mktd1.appendChild(mksub);
	    mktd2.appendChild(mkpro);
	    mktd3.appendChild(mklec);
	    mktd4.appendChild(mklect);
	    mktr.appendChild(mktd1);
	    mktr.appendChild(mktd2);
	    mktr.appendChild(mktd3);
	    document.getElementById("lecTimeTable").appendChild(mktr);    	
    </script>

</body>
</html>