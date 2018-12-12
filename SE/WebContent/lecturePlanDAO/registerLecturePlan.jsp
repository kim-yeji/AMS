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
  	<title>강의계획서 등록</title>
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
    <h3>강의계획서 등록</h3>
    <%
	request.setCharacterEncoding("UTF-8");

    String subject = request.getParameter("subject");
    String lecP = request.getParameter("lecPlan");
    String proName = request.getParameter("proName");
    

    String fileName = subject+".txt";
	String fileDir = "Curriculum";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	File f = new File(filePath);
	

	if(!f.exists()){	
		%><script>
		alert("존재하지 않는 과목입니다.");
		history.go(-1); 
		</script>
		<% 
	} 
	else{
    fileName = subject+".txt";
	fileDir = "lecPlan";
	filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	File f2 = new File(filePath);
	BufferedWriter bw = null;

	try{
		FileWriter fw = new FileWriter(f2); 	
		bw = new BufferedWriter(fw);
	
		bw.write(subject);
	  	bw.newLine(); 
		bw.write(proName);
		bw.newLine(); 
		bw.write(lecP);
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	%>
	<div id="Write_Action">
		<h1>작업이 완료되었습니다.</h1>
		<a href="../pro/registerLecturePlan.jsp?id=<%=id%>"/>확인</a>
	</div>
	<%} %>
</body>
</html>