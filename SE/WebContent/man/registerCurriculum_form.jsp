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
	
    <form action="registerCurriculum_form.jsp">
      <table id="reporttable">
        <tr>
          <th>학과</th>
          <td>
            <select name='department'>
                <option value='cse'>컴퓨터공학과</option>
            </select>
          </td>
        </tr>
        <tr>
          <th>과목명</th>
          <td><input type="text" name="subject" required></td>
        </tr>
        <tr>
          <th>분반</th>
          <td><input type="text" name="classes" required></td>
        </tr>
        <tr>
          <th>교수명</th>
          <td><input type="text" name="proName" required></td>
        </tr>
        <tr>
          <th>과목코드</th>
          <td><input type="text" name="lecCode" required></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit">저장</button>
        </td>
        </tr>
      </table>
    </form>
  </body>
</html>
