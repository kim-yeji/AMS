<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <a href="../pro_main.jsp">교수</a>
        <a href="registerReport.jsp">성적처리</a>
        <a href="registerLecturePlan.jsp">강의계획서등록</a>
      </div>
    </header>
    <form action="registerReport_form.jsp">
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
          <td><input type="text" name="stuNum"></td>
        </tr>
        <tr>
          <th>이름</th>
          <td><input type="text" name="stuName"></td>
        </tr>
        <tr>
          <th>과목</th>
          <td>
            <select name='subject'>
                <option value='운영체제'>운영체제</option>
                <option value='소프트웨어공학'>소프트웨어공학</option>
            </select>
          </td>
        </tr>
        <tr>
          <th>성적</th>
          <td>
            <select name='grade'>
                <option value='A+'>A+</option>
                <option value='A0'>A0</option>
                <option value='B+'>B+</option>
                <option value='B0'>B0</option>
                <option value='C+'>C+</option>
                <option value='C0'>C0</option>
                <option value='D+'>D+</option>
                <option value='D0'>D0</option>
                <option value='F'>F</option>
                <option value='P'>P</option>
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
