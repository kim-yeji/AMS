<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>���ǰ�ȹ�����</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../pro_main.jsp">����</a>
        <a href="registerReport.jsp">����ó��</a>
        <a href="registerLecturePlan.jsp">���ǰ�ȹ�����</a>
      </div>
    </header>
    
    <form>
      <table id="lecPlantable">
        <tr>
          <th>�����</th>
           <td><input type="text" name='subject' id="subject"></td>
        </tr>
        <tr>
          <th>������ǥ</th>
          <td><textarea name="lecPlan" cols="50" rows="10" id="lecPlan" ></textarea></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">���</button>
            <button type="submit" value="submit" onclick="lecBlankFunction()">����</button>
        </td>
        </tr>
      </table>
    </form>
    
    
  </body>
</html>