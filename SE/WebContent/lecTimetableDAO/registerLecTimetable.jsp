<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
  	<meta charset="UTF-8">
  	<title>강의시간표등록</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="../script.js" type="text/javascript"></script>
  </head>
<body>
	<%String id = request.getParameter("id"); %>
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
    <legend>시간표등록이 완료되었습니다.</legend>
    <%
	request.setCharacterEncoding("UTF-8");

    String subject = request.getParameter("subject");
    String lecCode = request.getParameter("lecCode");
    String profName = request.getParameter("profName");
    String lecTime = request.getParameter("lecTime");
    
    String fileName = lecCode+".txt";
	String fileDir = "lecCode";
	String filePath = request.getRealPath(fileDir) + File.separator;
	filePath += fileName;
	System.out.println(filePath);
	File f = new File(filePath);
	BufferedWriter bw = null;

	try{
		FileWriter fw = new FileWriter(f); 	
		bw = new BufferedWriter(fw);
	
		bw.write(subject);
	  	bw.newLine(); 
		bw.write(lecCode);
	  	bw.newLine(); 
	  	bw.write(profName);
	  	bw.newLine(); 
	  	bw.write(lecTime);
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	%>
</body>
</html>