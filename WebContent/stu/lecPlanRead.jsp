<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>강의계획서 조회</title>
<link rel="stylesheet" type="text/css" href="../style.css">
<script src="main.js" type="text/javascript"></script>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("subject");
	String fileDir = "lecPlan";
	String filePath = request.getRealPath(fileDir) + File.separator;
	
	try{	
		String fileName = filePath + subject + ".txt";
		FileReader filereader = new FileReader(fileName);
		BufferedReader bufReader = new BufferedReader(filereader);
		System.out.println(fileName);
		
		subject = bufReader.readLine();
		String lecPlan = bufReader.readLine();
		bufReader.close();
%> 

<div id="lecPlanRead">
	<table id="Read">
		<tr>
			<td><div align="center"><h2>Read</h2></div></td>
		</tr>
		<tr>
			<td>
				<table border="1"> 
		    		<tr> 
						<td align=center>과목명</td>
						<td><%=subject%></td>
					</tr>
					<tr> 
						<td align=center>교과목표</td>
						<td><%=lecPlan%></td>
				   	</tr>
				</table>
			</td>
	 	</tr>
	</table>
</div>

<form id="back" action="searchLecturePlan.jsp">
	<input type="submit" value="돌아가기">
</form>

<%
	}catch(Exception e){
		out.print("데이터를 쓸 수 없습니다.<br/>");			
	}
%>	
	
</body>
</html>