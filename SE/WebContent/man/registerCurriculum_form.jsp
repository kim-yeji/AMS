<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
    <%@page import="java.io.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>교과목등록</title>
 <%String id = request.getParameter("id"); %>
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
    
    <%
    String subject = request.getParameter("subject");
    String classes = request.getParameter("classes");
    String proName = request.getParameter("proName");
    String lecCode = request.getParameter("lecCode");

    
    String fileName = subject+".txt";
	String fileDir = "Curriculum";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	File f = new File(filePath);
	BufferedWriter bw = null;

	try{
		FileWriter fw = new FileWriter(f,true); 	
		bw = new BufferedWriter(fw);
	
		bw.write(subject);
	  	bw.write(" ");
	  	bw.write(classes);
	  	bw.write(" ");
	  	bw.write(proName);
	  	bw.write(" ");
	  	bw.write(lecCode);
	  	bw.newLine();
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	%>
	<%=id%><a href="#" class="button" type="submit" onclick="move('../login.html');"/>로그아웃</a>
	<div id="Write_Action">
		<h1>작업이 완료되었습니다. 메인으로 돌아갑니다.</h1>
		<a href="#" class="button" type="submit" onclick="move('../manMain.jsp?id=<%=id%>');"/>확인</a>
	</div>
  </body>
</html>
