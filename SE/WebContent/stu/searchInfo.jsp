<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>�����⺻</title>
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
    <table id="infotable">
      <tr>
        <th>�̸�</th>
        <td>������</td>
      </tr>
      <tr>
        <th>�й�</th>
        <td>201600000</td>
      </tr>
      <tr>
        <th>�г�</th>
        <td>3</td>
      </tr>
      <tr>
        <th>�а�</th>
        <td>��ǻ�Ͱ��а�</td>
      </tr>
      <tr>
        <th>�������</th>
        <td>1995-11-11</td>
      </tr>
      <tr>
        <th>��ȭ��ȣ</th>
        <td>010-2222-2222</td>
      </tr>
    </table>
  </body>
</html>
