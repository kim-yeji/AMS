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
        <a href="../ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">장학생현황</a>
        <a href="../ReportDAO/searchReport.jsp?id=<%=id%>">성적표관리</a>
        <a href="applyCourse.jsp?id=<%=id%>">수강신청</a>
      </div>
    </header>
		<%=id%><a href="../login.html" />로그아웃</a>
    <form id="curriculumBar" action="searchCurriculum_form.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo">
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
	
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	String aa="";
	ArrayList curriculum = new ArrayList();
	while((aa=bufReader.readLine())!=null){
		curriculum.add(aa);
		curriculum.add(bufReader.readLine());
	}

	bufReader.close();
	if(curriculum.get(curriculum.size()-1)==null)
		curriculum.remove(curriculum.size()-1);
	bufReader.close();
    %>
   
    
	<table id="curriculumsTable">
		<tr>
			<th>
				과목명
			</th>
			<th>
				분반
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
    
    var tmpArr = new Array();
	
    <%for(int i=0;i<curriculum.size();i++){%>
    tmpArr[<%=i%>]='<%=curriculum.get(i)%>';
    <%}%>

    for(var i=0; i<tmpArr.length; i++){
    	var splitsub = tmpArr[i].split(" ");
    	var mksubject = document.createTextNode(splitsub[0]);
    	var mkclasses = document.createTextNode(splitsub[1]);
    	var mkproName = document.createTextNode(splitsub[2]);
	    var mksubcode = document.createTextNode(splitsub[3]);
	    var mktr = document.createElement('tr');
	    var mktd1 = document.createElement('td');
	    var mktd2 = document.createElement('td');
	    var mktd3 = document.createElement('td');
	    var mktd4 = document.createElement('td');

	    mktr.appendChild(mktd1);
	    mktr.appendChild(mktd2);
	    mktr.appendChild(mktd3);
	    mktr.appendChild(mktd4);
	    mktd1.appendChild(mksubject);
	    mktd2.appendChild(mkclasses);
	    mktd3.appendChild(mkproName);
	    mktd4.appendChild(mksubcode);

	    document.getElementById("curriculumsTable").appendChild(mktr);
    }
    	
    </script>
	  </fieldset>    
  </body>
</html>