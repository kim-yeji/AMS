<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.*"%>
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
		<div class="navbar">
			<a href="../proMain.jsp">교수</a> <a href="registerReport.jsp">성적처리</a>
			<a href="registerLecturePlan.jsp">강의계획서등록</a>
		</div>
	</header>

	<form action = "registerLecturePlan_F.jsp" accept-charset="utf-8" name = "lecPlan" method = "get">
		<table id="lecPlantable">
			<tr>
				<th>과목명</th>
				<td><input type="text" name='subject' id="subject"></td>
			</tr>
			<tr>
				<th>교과목표</th>
				<td><textarea name="lecPlan" cols="50" rows="10" id="lecPlan"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<button onclick="alertFunction()" type="reset" value="reset">취소</button>
					<input type="submit" value="저장" onclick="ttBlankFunction()">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>
