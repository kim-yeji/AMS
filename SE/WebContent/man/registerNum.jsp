<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>�й��ο�</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../manMain.jsp">�л�����</a>
        <div class="dropdown">
          <button class="dropbtn">��������
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerNum.jsp">�й��ο�</a>
            <a href="modifyInfo.jsp">��������</a>
          </div>
        </div>
        <div class="dropdown">
          <button class="dropbtn">��������
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="registerCurriculum.jsp">��������</a>
            <a href="registerLecTimetable.jsp">���ǽð�ǥ���</a>
          </div>
        </div>
        <a href="registerScholarship.jsp">���л����</a>
      </div>
    </header>
      <form action = "" class="formCenter" accept-charset="utf-8" id ="stuInfo" method = "get" margin="auto">
          <fieldset style = "width:500px">        
	         <legend>�й��ο�</legend>
	       <table>
	        <tr>
		        <td> �й� :</td>
		  		<td><input type = "text" name = "stuNum"/></td>
	        </tr>
	        <tr>
		  		<td>������� :</td>
		  		<td><input type = "text" name = "stuNum"/></td>
	  		</tr>
	  		<tr>
		  		<td>�̸� :</td>
		  		<td><input type = "text" name = "stuNum"/></td>
	  		</tr>
		  	<tr>
		    	<td>�а� :</td>
	    		<td><input type = "text" name = "stuNum"/></td>
	    	</tr>
	    	<tr>
	    		<td></td>
	        	 <td><input type="submit" value="���"></td>
	        </tr>
            
           </table>
           </fieldset>
        </form>
  </body>
</html>
