<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
 
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>학적변동</title>
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
    <h3>학적변동</h3>
    <%
    String Num = request.getParameter("stuNum");
    
    String fileName = Num+".txt";
	String fileDir = "ID";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;

	File f = new File(filePath);
	if(!f.exists()){	
		%><script>
		alert("존재하지 않는 학번입니다.");
		history.go(-1); 
		</script>
		<% 
	} 
	if(f.exists()){
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	String stuNum = bufReader.readLine();
	String pass = bufReader.readLine();
	String name = bufReader.readLine();
	String major = bufReader.readLine();
	String phoneNum = bufReader.readLine();
	bufReader.close();
    
    %>
     <div id="">
		<%=id%><a href="#" class="button" type="submit" onclick="move('../login.html');"/>로그아웃</a>
	</div>
 <form action = "../AcademicDAO/modifyInfo.jsp" class="formCenter" accept-charset="utf-8" id ="stuInfo" method = "get">
          <fieldset style = "width:500px">        
	         <legend>학적변동</legend>
	       <table>
	        <tr>
		        <td> 학번 :</td>
		        <td><input type="hidden" name="stuNum" value="<%=Num%>"> <%=Num%></td>
	        </tr>
	        <tr>
		  		<td>비밀번호:</td>
		  		<td><input type = "text" name="Modi_pass" value="<%=pass%>" required/></td>
	  		</tr>
	  		<tr>
		  		<td>이름 :</td>
		  		<td><input type = "text" name="Modi_name" value="<%=name%>" required/></td>
	  		</tr>
		  	<tr>
		    	<td>학과 :</td>
	    		<td><input type = "text" name="Modi_major"  value="<%=major%>" required/></td>
	    	</tr>
	    	<tr>
		    	<td>전화번호:</td>
		    	<td><input type = "text" name="Modi_phoneNum"  value="<%=phoneNum%>" required/></td>
	       	</tr>
	       		<input type = "hidden" name="id"  value="<%=id%>"/>           
           </table>
           </fieldset>
            <input type="submit" value="등록">
        </form>
        <%} %>
   </body>
  </html>
    