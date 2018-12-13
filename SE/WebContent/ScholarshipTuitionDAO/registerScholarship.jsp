<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<% request.setCharacterEncoding("euc-kr"); %>
 
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
    <h3>장학생등록</h3>
    <%
	request.setCharacterEncoding("UTF-8");

    String stuNum = request.getParameter("stuNum");
    String name = request.getParameter("name");
    String major = request.getParameter("major");
    String grade = request.getParameter("grade");
    

    String fileName = stuNum+".txt";
	String fileDir ="ID";
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
	fileDir ="Scholarship";
	filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	
	BufferedWriter bw = null;
	
	try{

		File f2 = new File(filePath);
		f.createNewFile();
		FileWriter fw = new FileWriter(f); 
		bw = new BufferedWriter(fw);
	
		bw.write(stuNum);
	  	bw.newLine(); 
	  	bw.write(name);
	  	bw.newLine();
		bw.write(major);
	  	bw.newLine(); 
		bw.write(grade);
	  	bw.newLine(); 
	
	}catch(Exception e){
		 System.out.println("데이터를 쓸 수 없습니다.");
	}finally{
		if(bw != null)	bw.close();
	}
	}
	%>
	 <div id="">
		<%=id%><a href="../login.html"/>로그아웃</a>
	</div>
	</form>
	<div id="Write_Action">
	<h1>작업이 완료되었습니다. 메인으로 돌아갑니다.</h1>
		<a href="../manMain.jsp?id=<%=id%>"/>확인</a>
	</div>
</body>
</html>