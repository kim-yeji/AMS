<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	String type = request.getParameter("login");
	
	String fileName = id+".txt";
	String fileDir = "ID";
	String filePath = request.getRealPath(fileDir) + "/";
	filePath += fileName;
	FileReader filereader = new FileReader(filePath);
	BufferedReader bufReader = new BufferedReader(filereader);
	String name = bufReader.readLine();
	String pass = bufReader.readLine();
	String tp = bufReader.readLine();
	bufReader.close();

	try{
	if( id.equals(name) && passwd.equals(pass)){
	%>	<form action="<%=type%>Main.jsp" id="moveId"><input type="hidden" name="id" value="<%=id%>"></form>
		<script>
			moveId.submit();
		</script>
	<%
	}else{%>
			<script>
			alert("비밀번호가 맞지 않습니다.");
			history.go(-1); 
			</script>
	<%}
	}catch(Exception e){
			out.print("데이터를 쓸 수 없습니다.<br/>");			
	}
		%>
<html>
<head>
<meta charset="EUC-KR">
</head>
<body>

</body>
</html>