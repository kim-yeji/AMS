<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
 <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<meta charset="UTF-8">
  	<title>강의계획서조회</title>
  	<link rel="stylesheet" type="text/css" href="../style.css">
  	<script src="main.js" type="text/javascript"></script>
  </head>
  <body>
    <header id="header">
      <div class="navbar">
        <a href="../stuMain.jsp">학생</a>
        <a href="searchInfo.jsp">학적기본</a>
        <div class="dropdown">
          <button class="dropbtn">수업
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="searchCurriculum.jsp">교과목조회</a>
            <a href="searchLecTimetable.jsp">강의시간표조회</a>
            <a href="searchLecturePlan.jsp">강의계획서조회</a>
          </div>
        </div>
        <a href="searchScholarship.jsp">장학생현황</a>
        <a href="searchReport.jsp">성적표관리</a>
        <a href="applyCourse.jsp">수강신청</a>
      </div>
    </header>
    <form>
      <table id="lecPlantable">
        <tr>
          <th>과목명</th>
           <td>소프트웨어 공학</td>
        </tr>
        <tr>
          <th>교과목표</th>
          <td><p>소프트웨어 공학에 대한 기본 개념을 이해한다. 특히 소프트웨어 시스템 개발에 필요한 생명주기 모델을 바탕으로 요구사항 분석, 설계, 코딩, 테스팅 및 유지보수 각 단계에서 이루어지는 활동과 산출물을 다룬다.</p>
				이러한 기본적인 학습과정을 바탕으로 학생들이 팀별 프로젝트를 수행하고,
				프로젝트 수행의 각 과정을 점검받음으로써 프로젝트 수행 능력을 향상시킨다.
				<p>이를 통해 학생들이 졸업 후 산업체에서 경험하게 되는 소프트웨어 개발의 기술적, 관리적 측면을 습득하게 되고
				습득한 이론과 실무를 개발 현장에서 쉽게 활용할 수 있도록 한다.</p></td>
        </tr>
        <tr>
          <td colspan="2">
            <button onclick="alertFunction()" type="reset" value="reset">취소</button>
            <button type="submit" value="submit" onclick="lecBlankFunction()">저장</button>
        </td>
        </tr>
      </table>
    </form>
    
  </body>
</html>
