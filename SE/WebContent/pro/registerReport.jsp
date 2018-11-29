<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>성적처리</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="../script.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../proMain.jsp">교수</a>
        <a href="registerReport.jsp">성적처리</a>
        <a href="registerLecturePlan.jsp">강의계획서등록</a>
      </div>
    </header>
    <form>
      <table id="reporttable">
        <tr>
          <th>학과</th>
          <td>
            <select name='department'>
                <option value='cse'>컴퓨터공학과</option>
            </select>
          </td>
        </tr>
        <tr>
          <th>학번</th>
          <td><input type="text"></td>
        </tr>
        <tr>
          <th>이름</th>
          <td><input type="text"></td>
        </tr>
        <tr>
          <th>과목</th>
          <td>
            <select name='subject'>
                <option value='os'>운영체제</option>
                <option value='se'>소프트웨어공학</option>
            </select>
          </td>
        </tr>
        <tr>
          <th>성적</th>
          <td>
            <select name='report'>
                <option value='ap'>A+</option>
                <option value='a'>A</option>
                <option value='bp'>B+</option>
                <option value='b'>B</option>
                <option value='cp'>C+</option>
                <option value='c'>C</option>
                <option value='dp'>D+</option>
                <option value='d'>D</option>
                <option value='f'>F</option>
            </select>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit">저장</button>
        </td>
        </tr>
      </table>
    </form>
  </body>
</html>
