<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>성적표관리</title>
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
    
    <%
	String stuNum = request.getParameter("stuNum");
    String fileName = stuNum+".txt";
	String fileDir = "Report";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	int j = 0;
	String aa="";
	ArrayList grade = new ArrayList();
	while((aa=bufReader.readLine())!=null){
		grade.add(aa);
		grade.add(bufReader.readLine());
	}

	bufReader.close();
	if(grade.get(grade.size()-1)==null)
		grade.remove(grade.size()-1);
    %>
    
    <%
    //String fileName2 = stuNum+".txt";
	String fileDir2 = "ID";
	String filePath2 = request.getRealPath(fileDir2) + "/";
	filePath2 += fileName;
	
	FileReader filereader2 = new FileReader(filePath2);
	BufferedReader bufReader2 = new BufferedReader(filereader2);
	bufReader2.readLine();
	bufReader2.readLine();
	String stuName = bufReader2.readLine();
	String stuMajor = bufReader2.readLine();
	bufReader2.close();

    %>
    <table id="reportinfo">
    	<tr>
    		<th>
    		학번
    		</th>
    		<th>
    		이름
    		</th>
    		<th>
    		학과
    		</th>
    	</tr>
    </table>
    
	<table id="reporttable">
		<tr>
			<th colspan="2">
				성적
			</th>
		</tr>
	</table>
   
    <script type="text/javascript">
	    var tmpArr = new Array();
	
	    <%for(int i=0;i<grade.size();i++){%>
	    tmpArr[<%=i%>]='<%=grade.get(i)%>';
	    <%}%>

	    for(var i=0; i<tmpArr.length; i++){
	    	var splitsub = tmpArr[i].split(" ");
	    	var mksub = document.createTextNode(splitsub[0]);
		    var mkgrd = document.createTextNode(splitsub[1]);
		    var mktr = document.createElement('tr');
		    var mktd1 = document.createElement('td');
		    var mktd2 = document.createElement('td');

		    mktr.appendChild(mktd1);
		    mktr.appendChild(mktd2);
		    mktd1.appendChild(mksub);
		    mktd2.appendChild(mkgrd);
 
		    document.getElementById("reporttable").appendChild(mktr);
	    }

	    var mknum = document.createTextNode("<%=stuNum%>");
	    var mkname = document.createTextNode("<%=stuName%>");
	    var mkmajor = document.createTextNode("<%=stuMajor%>");
	    var mktr2 = document.createElement('tr');
	    var mktd12 = document.createElement('td');
	    var mktd22 = document.createElement('td');
	    var mktd32 = document.createElement('td');

	    mktr2.appendChild(mktd12);
	    mktr2.appendChild(mktd22);
	    mktr2.appendChild(mktd32);
	    mktd12.appendChild(mknum);
	    mktd22.appendChild(mkname);
	    mktd32.appendChild(mkmajor);

	    document.getElementById("reportinfo").appendChild(mktr2);
	    
    </script>    
  </body>
</html>