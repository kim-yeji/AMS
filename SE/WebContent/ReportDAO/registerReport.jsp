<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
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
        <a href="../pro/registerReport.jsp?id=<%=id%>">성적처리</a>
        <a href="../pro/registerLecturePlan.jsp?id=<%=id%>">강의계획서등록</a>
      </div>
    </header>
  	<%=id%><a href="../login.html"/>로그아웃</a>
    <%
	request.setCharacterEncoding("UTF-8");

    String stuNum = request.getParameter("stuNum");
    String subject = request.getParameter("subject");
    String grade = request.getParameter("grade");
    
    String fileName = stuNum+".txt";
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
	else{
    fileName = stuNum+".txt";
	fileDir = "Report";
	filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;

	File f2 = new File(filePath);
	
	BufferedWriter bw = null;

	try{
		FileWriter fw = new FileWriter(f2,true); 	
		bw = new BufferedWriter(fw);
			
	  	bw.write(subject+" ");
	  	bw.write(grade);
	  	bw.newLine();
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	%>
	<div id="Write_Action">
		<h1>작업이 완료되었습니다.</h1>
		<a href="../pro/registerReport.jsp?id=<%=id%>"/>확인</a>
	</div>
	<%} %>
  </body>
</html>