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
 <%String id = request.getParameter("stuNum"); %>

      <div class="navbar">
        <a href="stuMain.jsp">�л�</a>
        <a href="stu/searchInfo.jsp">�����⺻</a>
        <div class="dropdown">
          <button class="dropbtn">����
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="stu/searchCurriculum.jsp">��������ȸ</a>
            <a href="stu/searchLecTimetable.jsp">���ǽð�ǥ��ȸ</a>
            <a href="stu/searchLecturePlan.jsp">���ǰ�ȹ����ȸ</a>
          </div>
        </div>
        <a href="stu/searchScholarship.jsp" id="">���л���Ȳ</a>
        <a href="stu/searchReport.jsp">����ǥ����</a>
        <a href="stu/applyCourse.jsp">������û</a>
      </div>
</header>
</head>
<body>
	<div id="">
		<%=id%><a href="#" class="button" type="submit" onclick="move('login.html');"/>�α׾ƿ�</a>
	</div>
</body>
</html>
