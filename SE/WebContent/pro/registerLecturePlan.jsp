<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>강의계획서등록</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
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
   		</div>
 		<form action="../lecturePlanDAO/registerLecturePlan.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo" method = "get">
        <fieldset style = "width:700px">
         <legend>강의계획서등록</legend>        
      <table id="lecPlantable">
        <tr>
          <th>과목명</th>
           <td><input type="text" name='subject' id="subject" required></td>
        </tr>
        <tr>
          <th>교수명</th>
           <td><input type="text" name='proName' id="proName" required></td>
        </tr>
        <tr>
          <th>교과목표</th>
          <td><textarea style="resize:none; name="lecPlan" cols="50" rows="10" id="lecPlan"  required></textarea></td>
        </tr>
        <tr>
          <td colspan="2">
          <input type="hidden" name="id" value="<%=id%>" >
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit" onclick="lecBlankFunction()">저장</button>
        </td>
        </tr>
      </table>
    </form>
    
    
  </body>
</html>
