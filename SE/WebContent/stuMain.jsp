<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  	<title>�л�������</title>
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="script.js" type="text/javascript"></script>
 <header id="header">
 <%String id = request.getParameter("id"); %>
      <div class="navbar">
        <a href="stuMain.jsp?id=<%=id%>">�л�</a>
        <a href="AcademicDAO/searchInfo.jsp?id=<%=id%>">�����⺻</a>
        <div class="dropdown">
          <button class="dropbtn">����
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="stu/searchCurriculum.jsp?id=<%=id%>">��������ȸ</a>
            <a href="stu/searchLecTimetable.jsp?id=<%=id%>">���ǽð�ǥ��ȸ</a>
            <a href="stu/searchLecturePlan.jsp?id=<%=id%>">���ǰ�ȹ����ȸ</a>
          </div>
        </div>
        <a href="ScholarshipTuitionDAO/searchScholarship.jsp?id=<%=id%>">���л���Ȳ</a>
        <a href="ReportDAO/searchReport.jsp?id=<%=id%>">����ǥ����</a>
        <a href="stu/applyCourse.jsp?id=<%=id%>">������û</a>
      </div>
</header>
</head>
<body>	
		<%=id%><a href="#" class="button" type="submit" onclick="move('login.html');"/>�α׾ƿ�</a>
	</body>
</html>
