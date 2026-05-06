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
 table {width: 100%; text-align: center;}
 td::nth-of-type(1){width: 100px;}
 td::nth-of-type(2){width: 300px;}
 td::nth-of-type(3){width: 100px;}
 td::nth-of-type(4){width: 100px;}
 td::nth-of-type(5){width: 100px;}
 tr:first-child {background-color: black; color: white;}
 tr:nth-of-type(2) td {text-align: right; padding-right: 20px;} 
 main {margin-bottom: 150px;}
 .title {text-align: left; padding-left: 10px;}
</style>
</head>
<body>
 <main>
 	<%@include file = "/WEB-INF/include/menus.jsp" %>
 	<h2>게시글 목록</h2>
 	<table>
 	 <tr>
 	 	<td>번호</td>
 	 	<td>제목</td> 	
 	 	<td>작성자</td> 	
 	 	<td>날짜</td>
 	 	<td>조회수</td>	
 	 </tr>	 
	   <tr>
	   	<td colspan="5">
	   	[<a href="/Board/WriteForm">새 글 추가</a>]&nbsp;&nbsp;&nbsp;
	   	[<a href="/">돌아가기</a>]
	   	</td>
	   </tr>
 	 <c:forEach var="board" items="${boardList}">
	   <tr>
	   	<td>${board.idx}</td>
	   	<td class="title"><a href="/Board/View?idx=${board.idx}">${board.title}</a></td>
	   	<td>${board.writer}</td>
	   	<td>${board.regdate}</td>
	   	<td>${board.hit}</td>
	   </tr>
	   </c:forEach>
 	</table>
 </main>
</body>
</html>