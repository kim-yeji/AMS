<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>학번부여</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="../script.js" type="text/javascript"></script>
  </head>
  <body>
    <%String id = request.getParameter("id");%>
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
 <div id="">
		<%=id%><a href="#" class="button" type="submit" onclick="move('../login.html');"/>로그아웃</a>
	</div>
      <form action = "../AcademicDAO/registerNum.jsp?id=<%=id%>" class="formCenter" accept-charset="utf-8" id ="stuInfo" method = "get" margin="auto">
          <fieldset style = "width:500px">        
	         <legend>학번부여</legend>
	       <table>
	        <tr>
		        <td> 학번 :</td>
		  		<td><input type = "text" name = "stuNum"/></td>
	        </tr>
	        <tr>
		  		<td>생년월일 :</td>
		  		<td><input type = "text" name = "pass"/></td>
	  		</tr>
	  		<tr>
		  		<td>이름 :</td>
		  		<td><input type = "text" name = "name"/></td>
	  		</tr>
		  	<tr>
		    	<td>학과 :</td>
	    		<td><input type = "text" name = "major"/></td>
	    	</tr>
	    	 <tr>
		    	<td>전화번호:</td>
	    		<td><input type = "text" name = "phoneNum"/></td>
	    	</tr>
	    	<tr>
	    		<td></td>
	        	 <td><input type="submit" value="등록"></td>
	        </tr>
            
           </table>
           <input type="hidden" name="id" value="<%=id%>">
           </fieldset>
        </form>
  </body>
</html>
