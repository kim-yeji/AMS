<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>강의시간표등록</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="../script.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../manMain.jsp">학사담당자</a>
        <div class="dropdown">
          <button class="dropbtn">학적관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerNum.jsp">학번부여</a>
            <a href="modifyInfo.jsp">학적변동</a>
          </div>
        </div>
        <div class="dropdown">
          <button class="dropbtn">교과관리
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerCurriculum.jsp">교과목등록</a>
            <a href="registerLecTimetable.jsp">강의시간표등록</a>
          </div>
        </div>
        <a href="registerScholarship.jsp">장학생등록</a>
      </div>
    </header>
    
    <form action = "registerLecTimetable_F.jsp" accept-charset="utf-8" name = "timetalble" method = "get">
      <table id="lectimetable">
        <tr>
          <th>과목명</th>
           <td><input type="text" name='subject' id="subject"></td>
        </tr>
        <tr>
          <th>과목코드</th>
          <td><input type="text" name='lecCode' id="lecCode"></td>
        </tr>
        <tr>
          <th>교수명</th>
          <td><input type="text" name='profName' id="profName"></td>
        </tr>
        <tr>
          <th>수업시간</th>
          <td><input type="text" name='lecTime' id="lecTime"></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <input type="submit" value="저장" onclick="ttBlankFunction()">
        </td>
        </tr>
      </table>
    </form>
    
  </body>
</html>
