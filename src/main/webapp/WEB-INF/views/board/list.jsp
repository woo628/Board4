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
 	<%@include file = "/WEB-INF/include/menus.jsp" %>
 	<table>
 	 <tr>
 	 	<td>번호</td>
 	 	<td>제목</td> 	
 	 	<td>작성자</td> 	
 	 	<td>날짜</td>
 	 	<td>조회수</td>
 	 	<td>삭제</td> 	 	
 	 	<td>수정</td> 	 	
 	 </tr>	 
	   <tr>
	   	<td colspan="7">
	   	[<a href="/Board/WriteForm">새 글 추가</a>]&nbsp;&nbsp;&nbsp;
	   	[<a href="/">돌아가기</a>]
	   	</td>
	   </tr>
 	 <c:forEach var="board" items="${boardList}">
	   <tr>
	   	<td>${board.idx}</td>
	   	<td>${board.title}</td>
	   	<td>${board.writer}</td>
	   	<td>${board.regdate}</td>
	   	<td>${board.hit}</td>
	   	<td><a href="/Board/Delete?idx=${board.idx}">삭제</a></td>
	   	<td><a href="/Board/UpdateForm?idx=${board.idx}">수정</a></td>
	   </tr>
	   </c:forEach>
 	</table>
 </main>
</body>
</html>