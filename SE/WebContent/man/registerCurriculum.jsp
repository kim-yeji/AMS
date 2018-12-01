<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>��������</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="../script.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../manMain.jsp">�л�����</a>
        <div class="dropdown">
          <button class="dropbtn">��������
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerNum.jsp">�й��ο�</a>
            <a href="modifyInfo.jsp">��������</a>
          </div>
        </div>
        <div class="dropdown">
          <button class="dropbtn">��������
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerCurriculum.jsp">��������</a>
            <a href="registerLecTimetable.jsp">���ǽð�ǥ���</a>
          </div>
        </div>
        <a href="registerScholarship.jsp">���л����</a>
      </div>
    </header>
    <form>
      <table id="reporttable">
        <tr>
          <th>�а�</th>
          <td>
            <select name='department'>
                <option value='cse'>��ǻ�Ͱ��а�</option>
            </select>
          </td>
        </tr>
        <tr>
          <th>�����</th>
          <td><input type="text"></td>
        </tr>
        <tr>
          <th>������</th>
          <td><input type="text"></td>
        </tr>
        <tr>
          <th>�����ڵ�</th>
          <td><input type="text"></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">���</button>
            <button type="submit" value="submit">����</button>
        </td>
        </tr>
      </table>
    </form>
  </body>
</html>
