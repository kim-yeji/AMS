<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>강의시간표등록</title>
      <%String id = request.getParameter("id");%>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../manMain.jsp?id=<%=id%>">학사담당자</a>
        <div class="dropdown">
          <button class="dropbtn">학적관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerNum.jsp?id=<%=id%>">학번부여</a>
            <a href="modifyInfo.jsp?id=<%=id%>">학적변동</a>
          </div>
        </div>
        <div class="dropdown">
          <button class="dropbtn">교과관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerCurriculum.jsp?id=<%=id%>">교과목등록</a>
            <a href="registerLecTimetable.jsp?id=<%=id%>">강의시간표등록</a>
          </div>
        </div>
        <a href="registerScholarship.jsp?id=<%=id%>">장학생등록</a>
      </div>
    </header>
		<%=id%><a href="../login.html"/>로그아웃</a>
		<div class ="formCenter" accept-charset="utf-8" name = "stuInfo" >
	    <fieldset style = "width:620px">
	        <legend>강의시간표등록</legend>
    <form action = "../lecTimetableDAO/registerLecTimetable.jsp" accept-charset="utf-8" name = "timetalble" method = "get">
      <table id="lectimetable">
        <tr>
          <th>과목명</th>
           <td><input type="text" name='subject' id="subject" required></td>
        </tr>
        <tr>
          <th>과목코드</th>
          <td><input type="text" name='lecCode' id="lecCode" required></td>
        </tr>
        <tr>
          <th>교수명</th>
          <td><input type="text" name='profName' id="profName" required></td>
        </tr>
        <tr>
          <th>강의시간</th>
          <td><input type="text" name='lecTime' id="lecTime" required></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit" onclick="ttBlankFunction()">저장</button>
        </td>
        </tr>
      </table>
    </form>
    </fieldset>
    </div>
  </body>
</html>
