<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favicon1.png" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet"/>
<style>
 table {width: 100%; text-align: center; margin-top: 10%;}
 tr:first-child {background-color: black; color: white;}
 tr:nth-of-type(2) {text-align: right;}
</style>
</head>
<body>
 <main>
 	<table>
 	 <tr>
 	 	<td>번호</td>
 	 	<td>아이디</td>
 	 	<td>제목</td> 	
 	 	<td>작성자</td> 	
 	 	<td>가입일</td> 	 	
 	 	<td>조회수</td>
 	 	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>	 	
 	 </tr>	 
	   <tr>
	   	<td colspan="8">[<a href="/">돌아가기</a>]</td>
	   </tr>
 	 <c:forEach var="board" items="${boardList}">
	   <tr>
	   	<td>${board.idx}</td>
	   	<td>${board.menu_id}</td>
	   	<td>${board.title}</td>
	   	<td>${board.writer}</td>
	   	<td>${board.regdate}</td>
	   	<td>${board.hit}</td>
	   	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	   </tr>
	   </c:forEach>
 	</table>
 </main>
</body>
</html>