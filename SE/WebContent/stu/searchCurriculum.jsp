<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>��������ȸ</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../stuMain.jsp">�л�</a>
        <a href="searchInfo.jsp">�����⺻</a>
        <div class="dropdown">
          <button class="dropbtn">����
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="searchCurriculum.jsp">��������ȸ</a>
            <a href="searchLecTimetable.jsp">���ǽð�ǥ��ȸ</a>
            <a href="searchLecturePlan.jsp">���ǰ�ȹ����ȸ</a>
          </div>
        </div>
        <a href="searchScholarship.jsp">���л���Ȳ</a>
        <a href="searchReport.jsp">����ǥ����</a>
        <a href="applyCourse.jsp">������û</a>
      </div>
    </header>
  </body>
</html>
