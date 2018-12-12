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
 <%String id = request.getParameter("id"); %>
      <div class="navbar">
        <a href="../proMain.jsp?id=<%=id%>">교수</a>
        <a href="registerReport.jsp?id=<%=id%>">성적처리</a>
        <a href="registerLecturePlan.jsp?id=<%=id%>">강의계획서등록</a>
      </div>
    </header>    
		<%=id%><a href="../login.html"/>로그아웃</a>
    <form action="../ReportDAO/registerReport.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo">
       <fieldset style = "width:500px">        
	         <legend>성적처리</legend>
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
          <td><input type="text" name="stuNum" required></td>
        </tr>
        <tr>
          <th>이름</th>
          <td><input type="text" name="stuName" required></td>
        </tr>
        <tr>
          <th>과목</th>
          <td><input type="text" name="subject" required></td>
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
        <td><input type="hidden" name="id" value="<%=id%>"></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit">저장</button>
        </td>
        </tr>
      </table>
      </fieldset>
    </form>
  </body>
</html>
